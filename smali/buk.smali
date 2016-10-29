.class public Lbuk;
.super Lcom/twitter/library/service/b;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/b",
        "<",
        "Lcom/twitter/library/api/t",
        "<",
        "Lcom/twitter/model/profile/b;",
        "Lcom/twitter/model/core/cj;",
        ">;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/twitter/model/core/TwitterUser;

.field public volatile b:Lcom/twitter/model/profile/ExtendedProfile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lbuk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lbuk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, Lbuk;->K()Lcom/twitter/library/service/e;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "users"

    aput-object v4, v3, v1

    const-string/jumbo v4, "extended_profile"

    aput-object v4, v3, v0

    .line 63
    invoke-virtual {v2, v3}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v2

    const-string/jumbo v3, "id"

    iget-object v4, p0, Lbuk;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v4, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 64
    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v2

    const-string/jumbo v3, "include_birthdate"

    iget-object v4, p0, Lbuk;->a:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v4, v4, Lcom/twitter/model/core/TwitterUser;->s:Z

    if-nez v4, :cond_0

    .line 65
    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    .line 62
    return-object v0

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/network/HttpOperation;",
            "Lcom/twitter/library/service/aa;",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/profile/b;",
            "Lcom/twitter/model/core/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lbuk;->S()Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p3}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/b;

    .line 80
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/profile/b;->b(J)Lcom/twitter/model/profile/b;

    .line 81
    invoke-virtual {v0}, Lcom/twitter/model/profile/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/ExtendedProfile;

    iput-object v0, p0, Lbuk;->b:Lcom/twitter/model/profile/ExtendedProfile;

    .line 82
    invoke-virtual {p0}, Lbuk;->T()Lcom/twitter/library/provider/b;

    move-result-object v0

    .line 83
    iget-object v2, p0, Lbuk;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v4, p0, Lbuk;->b:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twitter/library/provider/dm;->a(JLcom/twitter/model/profile/ExtendedProfile;Lcom/twitter/library/provider/b;)V

    .line 84
    invoke-virtual {v0}, Lcom/twitter/library/provider/b;->a()V

    .line 86
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 28
    check-cast p3, Lcom/twitter/library/api/t;

    invoke-virtual {p0, p1, p2, p3}, Lbuk;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/api/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/profile/b;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const-class v0, Lcom/twitter/model/profile/b;

    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/twitter/library/service/aa;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0}, Lbuk;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/library/service/ab;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbuk;->a:Lcom/twitter/model/core/TwitterUser;

    if-nez v1, :cond_1

    .line 52
    :cond_0
    invoke-virtual {p1, v0}, Lcom/twitter/library/service/aa;->a(Z)V

    .line 55
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lbuk;->b()Lcom/twitter/library/api/t;

    move-result-object v0

    return-object v0
.end method
