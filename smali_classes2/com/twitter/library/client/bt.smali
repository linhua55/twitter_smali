.class Lcom/twitter/library/client/bt;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/client/bk;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/twitter/library/client/bk;Z)V
    .locals 0

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/twitter/library/client/bt;->a:Lcom/twitter/library/client/bk;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    .line 1090
    iput-boolean p2, p0, Lcom/twitter/library/client/bt;->b:Z

    .line 1091
    return-void
.end method

.method private a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/aa;Lcom/twitter/library/client/Session;)V
    .locals 4

    .prologue
    .line 1111
    check-cast p1, Lblp;

    .line 1112
    iget-object v0, p0, Lcom/twitter/library/client/bt;->a:Lcom/twitter/library/client/bk;

    .line 1113
    invoke-static {v0}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bk;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lblp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bu;

    .line 1114
    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1116
    :try_start_0
    iget-object v1, p0, Lcom/twitter/library/client/bt;->a:Lcom/twitter/library/client/bk;

    .line 1117
    invoke-virtual {p1}, Lblp;->b()Lcom/twitter/model/account/LoginResponse;

    move-result-object v2

    invoke-virtual {p1}, Lblp;->s()Lcom/twitter/model/core/TwitterUser;

    move-result-object v3

    .line 1116
    invoke-static {v1, p3, v2, v3}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Lcom/twitter/model/account/LoginResponse;Lcom/twitter/model/core/TwitterUser;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    if-eqz v0, :cond_0

    .line 1119
    invoke-interface {v0, p3, v1}, Lcom/twitter/library/client/bu;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1121
    :catch_0
    move-exception v1

    .line 1122
    iget-object v1, p0, Lcom/twitter/library/client/bt;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {p1}, Lblp;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    .line 1123
    if-eqz v0, :cond_0

    .line 1124
    const/4 v1, 0x2

    const/16 v2, 0x190

    .line 1127
    invoke-virtual {p1}, Lblp;->h()Lcom/twitter/library/api/ak;

    move-result-object v3

    .line 1124
    invoke-interface {v0, p3, v1, v2, v3}, Lcom/twitter/library/client/bu;->a(Lcom/twitter/library/client/Session;IILcom/twitter/library/api/ak;)V

    goto :goto_0

    .line 1131
    :cond_1
    iget-object v1, p0, Lcom/twitter/library/client/bt;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {p1}, Lblp;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    .line 1132
    if-eqz v0, :cond_0

    .line 1133
    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->d()I

    move-result v1

    .line 1134
    const/16 v2, 0x19c

    if-ne v1, v2, :cond_2

    .line 1135
    invoke-virtual {p1}, Lblp;->h()Lcom/twitter/library/api/ak;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/twitter/library/client/bu;->a(Lcom/twitter/library/client/Session;Lcom/twitter/library/api/ak;)V

    goto :goto_0

    .line 1137
    :cond_2
    const/4 v2, 0x1

    .line 1140
    invoke-virtual {p1}, Lblp;->h()Lcom/twitter/library/api/ak;

    move-result-object v3

    .line 1137
    invoke-interface {v0, p3, v2, v1, v3}, Lcom/twitter/library/client/bu;->a(Lcom/twitter/library/client/Session;IILcom/twitter/library/api/ak;)V

    goto :goto_0
.end method

.method private b(Lcom/twitter/library/service/x;Lcom/twitter/library/service/aa;Lcom/twitter/library/client/Session;)V
    .locals 4

    .prologue
    .line 1147
    check-cast p1, Lbku;

    .line 1148
    iget-object v0, p0, Lcom/twitter/library/client/bt;->a:Lcom/twitter/library/client/bk;

    .line 1149
    invoke-static {v0}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bk;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lbku;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bu;

    .line 1150
    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1152
    :try_start_0
    iget-object v1, p0, Lcom/twitter/library/client/bt;->a:Lcom/twitter/library/client/bk;

    .line 1153
    invoke-virtual {p1}, Lbku;->t()Lcom/twitter/model/account/LoginResponse;

    move-result-object v2

    invoke-virtual {p1}, Lbku;->h()Lcom/twitter/model/core/TwitterUser;

    move-result-object v3

    .line 1152
    invoke-static {v1, p3, v2, v3}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Lcom/twitter/model/account/LoginResponse;Lcom/twitter/model/core/TwitterUser;)Ljava/lang/String;

    move-result-object v1

    .line 1154
    if-eqz v0, :cond_0

    .line 1155
    invoke-interface {v0, p3, v1}, Lcom/twitter/library/client/bu;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    :cond_0
    :goto_0
    return-void

    .line 1157
    :catch_0
    move-exception v1

    .line 1158
    iget-object v1, p0, Lcom/twitter/library/client/bt;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {p1}, Lbku;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    .line 1159
    if-eqz v0, :cond_0

    .line 1160
    const/4 v1, 0x2

    const/16 v2, 0x190

    .line 1163
    invoke-virtual {p1}, Lbku;->g()Lcom/twitter/library/api/ak;

    move-result-object v3

    .line 1160
    invoke-interface {v0, p3, v1, v2, v3}, Lcom/twitter/library/client/bu;->a(Lcom/twitter/library/client/Session;IILcom/twitter/library/api/ak;)V

    goto :goto_0

    .line 1167
    :cond_1
    iget-object v1, p0, Lcom/twitter/library/client/bt;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {p1}, Lbku;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    .line 1168
    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->d()I

    move-result v1

    .line 1170
    const/16 v2, 0x19c

    if-ne v1, v2, :cond_2

    .line 1172
    invoke-virtual {p1}, Lbku;->g()Lcom/twitter/library/api/ak;

    move-result-object v1

    .line 1171
    invoke-interface {v0, p3, v1}, Lcom/twitter/library/client/bu;->a(Lcom/twitter/library/client/Session;Lcom/twitter/library/api/ak;)V

    goto :goto_0

    .line 1174
    :cond_2
    const/4 v2, 0x1

    .line 1177
    invoke-virtual {p1}, Lbku;->g()Lcom/twitter/library/api/ak;

    move-result-object v3

    .line 1174
    invoke-interface {v0, p3, v2, v1, v3}, Lcom/twitter/library/client/bu;->a(Lcom/twitter/library/client/Session;IILcom/twitter/library/api/ak;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 1086
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/library/client/bt;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 3

    .prologue
    .line 1095
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    .line 1096
    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 1097
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    .line 1098
    iget-object v2, p0, Lcom/twitter/library/client/bt;->a:Lcom/twitter/library/client/bk;

    invoke-static {v2}, Lcom/twitter/library/client/bk;->c(Lcom/twitter/library/client/bk;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v1, v1, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/client/Session;

    .line 1099
    if-nez v1, :cond_0

    .line 1108
    :goto_0
    return-void

    .line 1103
    :cond_0
    iget-boolean v2, p0, Lcom/twitter/library/client/bt;->b:Z

    if-eqz v2, :cond_1

    .line 1104
    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/library/client/bt;->b(Lcom/twitter/library/service/x;Lcom/twitter/library/service/aa;Lcom/twitter/library/client/Session;)V

    goto :goto_0

    .line 1106
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/library/client/bt;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/aa;Lcom/twitter/library/client/Session;)V

    goto :goto_0
.end method
