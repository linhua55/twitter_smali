.class public Lbbn;
.super Lcmx;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmx",
        "<",
        "Lbeq;",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcmx;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbeq;)Lcom/twitter/model/core/TwitterUser;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    invoke-interface {p1}, Lbeq;->p()I

    move-result v3

    .line 22
    new-instance v0, Lcom/twitter/model/core/cv;

    invoke-direct {v0}, Lcom/twitter/model/core/cv;-><init>()V

    .line 23
    invoke-interface {p1}, Lbeq;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/twitter/model/core/cv;->a(J)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 24
    invoke-interface {p1}, Lbeq;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->b(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 25
    invoke-interface {p1}, Lbeq;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->g(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 26
    invoke-interface {p1}, Lbeq;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->c(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 27
    invoke-interface {p1}, Lbeq;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->i(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 28
    invoke-interface {p1}, Lbeq;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->e(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 29
    invoke-interface {p1}, Lbeq;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->f(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 30
    invoke-interface {p1}, Lbeq;->i()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->a(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 31
    invoke-interface {p1}, Lbeq;->j()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->b(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 32
    invoke-interface {p1}, Lbeq;->f()Lcom/twitter/model/core/bm;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 33
    invoke-interface {p1}, Lbeq;->h()Lcom/twitter/model/core/bm;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->b(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 34
    invoke-interface {p1}, Lbeq;->y()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/twitter/model/core/cv;->b(J)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v2}, Lcom/twitter/model/core/cv;->a(Z)Lcom/twitter/model/core/cv;

    move-result-object v4

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    .line 36
    :goto_0
    invoke-virtual {v4, v0}, Lcom/twitter/model/core/cv;->b(Z)Lcom/twitter/model/core/cv;

    move-result-object v4

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    .line 37
    :goto_1
    invoke-virtual {v4, v0}, Lcom/twitter/model/core/cv;->c(Z)Lcom/twitter/model/core/cv;

    move-result-object v4

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    .line 38
    :goto_2
    invoke-virtual {v4, v0}, Lcom/twitter/model/core/cv;->d(Z)Lcom/twitter/model/core/cv;

    move-result-object v4

    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    .line 39
    :goto_3
    invoke-virtual {v4, v0}, Lcom/twitter/model/core/cv;->e(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 40
    invoke-interface {p1}, Lbeq;->q()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->c(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 41
    invoke-interface {p1}, Lbeq;->r()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->d(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 42
    invoke-interface {p1}, Lbeq;->s()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->e(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 43
    invoke-interface {p1}, Lbeq;->u()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->h(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 44
    invoke-interface {p1}, Lbeq;->t()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->f(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 45
    invoke-interface {p1}, Lbeq;->v()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->g(I)Lcom/twitter/model/core/cv;

    move-result-object v4

    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    .line 46
    :goto_4
    invoke-virtual {v4, v0}, Lcom/twitter/model/core/cv;->g(Z)Lcom/twitter/model/core/cv;

    move-result-object v4

    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_5

    move v0, v1

    .line 47
    :goto_5
    invoke-virtual {v4, v0}, Lcom/twitter/model/core/cv;->f(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 48
    invoke-interface {p1}, Lbeq;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->h(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 49
    invoke-interface {p1}, Lbeq;->o()Lcom/twitter/util/collection/ab;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/util/collection/ab;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 50
    invoke-interface {p1}, Lbeq;->m()Lcom/twitter/model/profile/ExtendedProfile;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/profile/ExtendedProfile;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 51
    invoke-interface {p1}, Lbeq;->A()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/twitter/model/core/cv;->e(J)Lcom/twitter/model/core/cv;

    move-result-object v4

    .line 52
    invoke-interface {p1}, Lbeq;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 54
    invoke-static {}, Lcom/twitter/model/ads/AdvertiserType;->values()[Lcom/twitter/model/ads/AdvertiserType;

    move-result-object v0

    invoke-interface {p1}, Lbeq;->B()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    sget-object v5, Lcom/twitter/model/ads/AdvertiserType;->a:Lcom/twitter/model/ads/AdvertiserType;

    .line 53
    invoke-static {v0, v5}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/ads/AdvertiserType;

    .line 52
    :goto_6
    invoke-virtual {v4, v0}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/ads/AdvertiserType;)Lcom/twitter/model/core/cv;

    move-result-object v4

    .line 57
    invoke-interface {p1}, Lbeq;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 59
    invoke-static {}, Lcom/twitter/model/businessprofiles/BusinessProfileState;->values()[Lcom/twitter/model/businessprofiles/BusinessProfileState;

    move-result-object v0

    .line 60
    invoke-interface {p1}, Lbeq;->C()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-static {v0, v5}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    sget-object v5, Lcom/twitter/model/businessprofiles/BusinessProfileState;->a:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    .line 58
    invoke-static {v0, v5}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/businessprofiles/BusinessProfileState;

    .line 57
    :goto_7
    invoke-virtual {v4, v0}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/businessprofiles/BusinessProfileState;)Lcom/twitter/model/core/cv;

    move-result-object v4

    and-int/lit16 v0, v3, 0x400

    if-eqz v0, :cond_8

    move v0, v1

    .line 63
    :goto_8
    invoke-virtual {v4, v0}, Lcom/twitter/model/core/cv;->j(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 64
    invoke-interface {p1}, Lbeq;->w()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->i(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 65
    invoke-interface {p1}, Lbeq;->x()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/twitter/model/core/cv;->c(J)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 66
    invoke-interface {p1}, Lbeq;->z()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/twitter/model/core/cv;->d(J)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v2}, Lcom/twitter/model/core/cv;->h(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    and-int/lit8 v4, v3, 0x20

    if-eqz v4, :cond_9

    .line 68
    :goto_9
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->i(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->j(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 22
    return-object v0

    :cond_0
    move v0, v2

    .line 35
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 36
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 37
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 38
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 45
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 46
    goto/16 :goto_5

    .line 53
    :cond_6
    sget-object v0, Lcom/twitter/model/ads/AdvertiserType;->a:Lcom/twitter/model/ads/AdvertiserType;

    goto :goto_6

    .line 58
    :cond_7
    sget-object v0, Lcom/twitter/model/businessprofiles/BusinessProfileState;->a:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    goto :goto_7

    :cond_8
    move v0, v2

    .line 57
    goto :goto_8

    :cond_9
    move v1, v2

    .line 67
    goto :goto_9
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lbeq;

    invoke-virtual {p0, p1}, Lbbn;->a(Lbeq;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    return-object v0
.end method
