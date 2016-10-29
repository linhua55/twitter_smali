.class public Lcom/twitter/library/api/upload/ag;
.super Lcom/twitter/library/api/upload/q;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/twitter/library/api/upload/ag;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/api/upload/q;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 19
    return-void
.end method

.method private a(Lcom/twitter/library/api/upload/q;)Lcom/twitter/library/service/aa;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/api/upload/ag;->a(Lcom/twitter/library/api/upload/q;Ljava/lang/String;)Lcom/twitter/library/service/aa;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/library/api/upload/q;Ljava/lang/String;)Lcom/twitter/library/service/aa;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/library/api/upload/ag;->b:Lcom/twitter/library/client/az;

    invoke-virtual {p1, v0}, Lcom/twitter/library/api/upload/q;->a(Lcom/twitter/library/client/az;)Lcom/twitter/library/api/upload/q;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/twitter/library/api/upload/ag;->M()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/api/upload/q;->h(I)Lcom/twitter/library/service/x;

    .line 63
    if-eqz p2, :cond_0

    .line 64
    new-instance v0, Lcom/twitter/library/api/upload/a;

    iget-object v1, p0, Lcom/twitter/library/api/upload/ag;->p:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/twitter/library/api/upload/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/twitter/library/api/upload/q;->a(Lcom/twitter/library/api/upload/r;)Lcom/twitter/library/api/upload/al;

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/library/api/upload/q;->a(Lcom/twitter/library/api/upload/al;)Lcom/twitter/library/service/aa;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/twitter/library/service/aa;)V
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/library/api/upload/ag;->o:Landroid/os/Bundle;

    const-string/jumbo v1, "user"

    iget-object v2, p0, Lcom/twitter/library/api/upload/ag;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/twitter/library/api/upload/ag;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/twitter/library/api/upload/ag;->b:Lcom/twitter/library/client/az;

    iget-boolean v2, v2, Lcom/twitter/library/client/az;->c:Z

    if-eqz v2, :cond_5

    .line 33
    new-instance v0, Lcom/twitter/library/api/upload/ak;

    iget-object v2, p0, Lcom/twitter/library/api/upload/ag;->p:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/library/api/upload/ag;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {v0, v2, v1, v3}, Lcom/twitter/library/api/upload/ak;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;)V

    const-string/jumbo v2, "edit_profile::header:remove"

    invoke-direct {p0, v0, v2}, Lcom/twitter/library/api/upload/ag;->a(Lcom/twitter/library/api/upload/q;Ljava/lang/String;)Lcom/twitter/library/service/aa;

    move-result-object v0

    .line 40
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/twitter/library/api/upload/ag;->b:Lcom/twitter/library/client/az;

    iget-object v2, v2, Lcom/twitter/library/client/az;->a:Lcom/twitter/media/model/MediaFile;

    if-eqz v2, :cond_2

    .line 42
    new-instance v0, Lcom/twitter/library/api/upload/ah;

    iget-object v2, p0, Lcom/twitter/library/api/upload/ag;->p:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/library/api/upload/ag;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {v0, v2, v1, v3}, Lcom/twitter/library/api/upload/ah;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;)V

    const-string/jumbo v2, "edit_profile::avatar:upload"

    invoke-direct {p0, v0, v2}, Lcom/twitter/library/api/upload/ag;->a(Lcom/twitter/library/api/upload/q;Ljava/lang/String;)Lcom/twitter/library/service/aa;

    move-result-object v0

    .line 47
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    :cond_3
    iget-object v2, p0, Lcom/twitter/library/api/upload/ag;->b:Lcom/twitter/library/client/az;

    iget-boolean v2, v2, Lcom/twitter/library/client/az;->i:Z

    if-eqz v2, :cond_4

    .line 49
    new-instance v0, Lcom/twitter/library/api/upload/ai;

    iget-object v2, p0, Lcom/twitter/library/api/upload/ag;->p:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/library/api/upload/ag;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {v0, v2, v1, v3}, Lcom/twitter/library/api/upload/ai;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;)V

    invoke-direct {p0, v0}, Lcom/twitter/library/api/upload/ag;->a(Lcom/twitter/library/api/upload/q;)Lcom/twitter/library/service/aa;

    move-result-object v0

    .line 53
    :cond_4
    if-eqz v0, :cond_6

    .line 54
    invoke-virtual {p1, v0}, Lcom/twitter/library/service/aa;->a(Lcom/twitter/library/service/aa;)V

    .line 58
    :goto_1
    return-void

    .line 35
    :cond_5
    iget-object v2, p0, Lcom/twitter/library/api/upload/ag;->b:Lcom/twitter/library/client/az;

    iget-object v2, v2, Lcom/twitter/library/client/az;->b:Lcom/twitter/media/model/MediaFile;

    if-eqz v2, :cond_0

    .line 36
    new-instance v0, Lcom/twitter/library/api/upload/aj;

    iget-object v2, p0, Lcom/twitter/library/api/upload/ag;->p:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/library/api/upload/ag;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {v0, v2, v1, v3}, Lcom/twitter/library/api/upload/aj;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;)V

    const-string/jumbo v2, "edit_profile::header:upload"

    invoke-direct {p0, v0, v2}, Lcom/twitter/library/api/upload/ag;->a(Lcom/twitter/library/api/upload/q;Ljava/lang/String;)Lcom/twitter/library/service/aa;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/library/service/aa;->a(Z)V

    goto :goto_1
.end method
