.class Lcom/twitter/library/client/bp;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/client/bk;


# direct methods
.method private constructor <init>(Lcom/twitter/library/client/bk;)V
    .locals 0

    .prologue
    .line 959
    iput-object p1, p0, Lcom/twitter/library/client/bp;->a:Lcom/twitter/library/client/bk;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bl;)V
    .locals 0

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/twitter/library/client/bp;-><init>(Lcom/twitter/library/client/bk;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 959
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/library/client/bp;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 7

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/twitter/library/client/bp;->a:Lcom/twitter/library/client/bk;

    invoke-static {v0}, Lcom/twitter/library/client/bk;->c(Lcom/twitter/library/client/bk;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/client/Session;

    .line 1023
    if-nez v2, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    instance-of v0, p1, Lblk;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1028
    check-cast v0, Lblk;

    .line 1030
    invoke-virtual {v0}, Lblk;->s()[I

    move-result-object v3

    .line 1031
    invoke-virtual {v0}, Lblk;->e()Lcom/twitter/model/account/LoginResponse;

    move-result-object v4

    invoke-virtual {v0}, Lblk;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lblk;->h()Lcom/twitter/model/core/TwitterUser;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 1030
    invoke-virtual/range {v0 .. v6}, Lcom/twitter/library/client/bp;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/client/Session;[ILcom/twitter/model/account/LoginResponse;Ljava/lang/String;Lcom/twitter/model/core/TwitterUser;)V

    goto :goto_0

    .line 1032
    :cond_2
    instance-of v0, p1, Lbld;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1033
    check-cast v0, Lbld;

    .line 1034
    invoke-virtual {v0}, Lbld;->t()[I

    move-result-object v3

    .line 1035
    invoke-virtual {v0}, Lbld;->x()Lcom/twitter/model/account/LoginResponse;

    move-result-object v4

    invoke-virtual {v0}, Lbld;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lbld;->h()Lcom/twitter/model/core/TwitterUser;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 1034
    invoke-virtual/range {v0 .. v6}, Lcom/twitter/library/client/bp;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/client/Session;[ILcom/twitter/model/account/LoginResponse;Ljava/lang/String;Lcom/twitter/model/core/TwitterUser;)V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/service/x;Lcom/twitter/library/client/Session;[ILcom/twitter/model/account/LoginResponse;Ljava/lang/String;Lcom/twitter/model/core/TwitterUser;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 964
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 966
    iget-object v1, p0, Lcom/twitter/library/client/bp;->a:Lcom/twitter/library/client/bk;

    .line 967
    invoke-static {v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bk;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/library/service/x;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/client/bq;

    .line 969
    const-string/jumbo v2, "login_challenge_enabled"

    invoke-static {v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    iget v2, p4, Lcom/twitter/model/account/LoginResponse;->d:I

    if-ne v2, v3, :cond_1

    iget-object v2, p4, Lcom/twitter/model/account/LoginResponse;->b:Lcom/twitter/model/account/LoginVerificationRequiredResponse;

    iget v2, v2, Lcom/twitter/model/account/LoginVerificationRequiredResponse;->e:I

    if-ne v2, v3, :cond_1

    .line 974
    sget-object v0, Lcom/twitter/library/client/Session$LoginStatus;->a:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {p2, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    .line 975
    if-eqz v1, :cond_0

    .line 976
    iget-object v0, p4, Lcom/twitter/model/account/LoginResponse;->b:Lcom/twitter/model/account/LoginVerificationRequiredResponse;

    invoke-interface {v1, p2, v0}, Lcom/twitter/library/client/bq;->b(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/LoginVerificationRequiredResponse;)V

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    if-eqz p4, :cond_3

    iget v2, p4, Lcom/twitter/model/account/LoginResponse;->d:I

    if-ne v2, v3, :cond_3

    iget-object v2, p4, Lcom/twitter/model/account/LoginResponse;->b:Lcom/twitter/model/account/LoginVerificationRequiredResponse;

    iget v2, v2, Lcom/twitter/model/account/LoginVerificationRequiredResponse;->e:I

    if-eq v2, v4, :cond_2

    iget-object v2, p4, Lcom/twitter/model/account/LoginResponse;->b:Lcom/twitter/model/account/LoginVerificationRequiredResponse;

    iget v2, v2, Lcom/twitter/model/account/LoginVerificationRequiredResponse;->e:I

    if-nez v2, :cond_3

    .line 984
    :cond_2
    sget-object v0, Lcom/twitter/library/client/Session$LoginStatus;->a:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {p2, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    .line 985
    if-eqz v1, :cond_0

    .line 986
    iget-object v0, p4, Lcom/twitter/model/account/LoginResponse;->b:Lcom/twitter/model/account/LoginVerificationRequiredResponse;

    invoke-interface {v1, p2, v0}, Lcom/twitter/library/client/bq;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/LoginVerificationRequiredResponse;)V

    goto :goto_0

    .line 990
    :cond_3
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 992
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bp;->a:Lcom/twitter/library/client/bk;

    invoke-static {v0, p2, p4, p6}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Lcom/twitter/model/account/LoginResponse;Lcom/twitter/model/core/TwitterUser;)Ljava/lang/String;

    move-result-object v0

    .line 994
    if-eqz v1, :cond_0

    .line 995
    invoke-interface {v1, p2, v0}, Lcom/twitter/library/client/bq;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 997
    :catch_0
    move-exception v0

    .line 998
    iget-object v0, p0, Lcom/twitter/library/client/bp;->a:Lcom/twitter/library/client/bk;

    invoke-static {v0, p2, p5}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    .line 999
    if-eqz v1, :cond_0

    .line 1000
    invoke-interface {v1, p2, v3, p3, v5}, Lcom/twitter/library/client/bq;->a(Lcom/twitter/library/client/Session;I[ILjava/util/List;)V

    goto :goto_0

    .line 1005
    :cond_4
    if-eqz v1, :cond_0

    .line 1006
    instance-of v0, p1, Lbld;

    if-eqz v0, :cond_6

    .line 1007
    check-cast p1, Lbld;

    .line 1009
    invoke-virtual {p1}, Lbld;->s()Ljava/util/List;

    move-result-object v0

    .line 1008
    invoke-interface {v1, p2, v4, p3, v0}, Lcom/twitter/library/client/bq;->a(Lcom/twitter/library/client/Session;I[ILjava/util/List;)V

    .line 1014
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/twitter/library/client/bp;->a:Lcom/twitter/library/client/bk;

    invoke-static {v0, p2, p5}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    goto :goto_0

    .line 1010
    :cond_6
    instance-of v0, p1, Lblk;

    if-eqz v0, :cond_5

    .line 1011
    invoke-interface {v1, p2, v4, p3, v5}, Lcom/twitter/library/client/bq;->a(Lcom/twitter/library/client/Session;I[ILjava/util/List;)V

    goto :goto_1
.end method
