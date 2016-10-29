.class Lcom/twitter/library/client/bn;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/client/bk;


# direct methods
.method constructor <init>(Lcom/twitter/library/client/bk;)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/twitter/library/client/bn;->a:Lcom/twitter/library/client/bk;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    .line 1042
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 1040
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/library/client/bn;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1046
    move-object v2, p1

    check-cast v2, Lbkr;

    .line 1047
    invoke-virtual {v2}, Lbkr;->h()[I

    move-result-object v4

    .line 1048
    invoke-virtual {v2}, Lbkr;->t()Z

    move-result v7

    .line 1049
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/twitter/library/service/aa;

    .line 1051
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    .line 1052
    iget-object v1, p0, Lcom/twitter/library/client/bn;->a:Lcom/twitter/library/client/bk;

    invoke-static {v1}, Lcom/twitter/library/client/bk;->c(Lcom/twitter/library/client/bk;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v0, v0, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/client/Session;

    .line 1053
    if-nez v1, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    invoke-virtual {v3}, Lcom/twitter/library/service/aa;->b()Z

    move-result v8

    .line 1057
    iget-object v0, p0, Lcom/twitter/library/client/bn;->a:Lcom/twitter/library/client/bk;

    .line 1058
    invoke-static {v0}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bk;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v9, v2, Lbkr;->d:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bo;

    .line 1059
    if-eqz v8, :cond_4

    .line 1061
    :try_start_0
    iget-object v8, p0, Lcom/twitter/library/client/bn;->a:Lcom/twitter/library/client/bk;

    .line 1062
    invoke-virtual {v2}, Lbkr;->s()Lcom/twitter/model/account/LoginResponse;

    move-result-object v9

    .line 1063
    invoke-virtual {v2}, Lbkr;->g()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    .line 1061
    invoke-static {v8, v1, v9, v2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Lcom/twitter/model/account/LoginResponse;Lcom/twitter/model/core/TwitterUser;)Ljava/lang/String;

    move-result-object v8

    .line 1064
    if-eqz v0, :cond_0

    .line 1065
    if-nez v7, :cond_3

    move v2, v6

    :goto_1
    invoke-interface {v0, v1, v8, v2}, Lcom/twitter/library/client/bo;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1067
    :catch_0
    move-exception v2

    .line 1068
    sget-object v2, Lcom/twitter/library/client/Session$LoginStatus;->a:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    .line 1069
    if-eqz v0, :cond_0

    .line 1070
    const/4 v2, 0x2

    .line 1072
    invoke-virtual {v3}, Lcom/twitter/library/service/aa;->d()I

    move-result v3

    if-nez v7, :cond_2

    move v5, v6

    .line 1070
    :cond_2
    invoke-interface/range {v0 .. v5}, Lcom/twitter/library/client/bo;->a(Lcom/twitter/library/client/Session;II[IZ)V

    goto :goto_0

    :cond_3
    move v2, v5

    .line 1065
    goto :goto_1

    .line 1076
    :cond_4
    sget-object v2, Lcom/twitter/library/client/Session$LoginStatus;->a:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    .line 1077
    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {v3}, Lcom/twitter/library/service/aa;->d()I

    move-result v3

    if-nez v7, :cond_5

    move v5, v6

    :cond_5
    move v2, v6

    .line 1078
    invoke-interface/range {v0 .. v5}, Lcom/twitter/library/client/bo;->a(Lcom/twitter/library/client/Session;II[IZ)V

    goto :goto_0
.end method
