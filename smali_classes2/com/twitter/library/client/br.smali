.class Lcom/twitter/library/client/br;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/client/bk;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/twitter/library/client/bk;I)V
    .locals 0

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/twitter/library/client/br;->a:Lcom/twitter/library/client/bk;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    .line 1190
    iput p2, p0, Lcom/twitter/library/client/br;->b:I

    .line 1191
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 1184
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/library/client/br;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1197
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    .line 1198
    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 1199
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    iget-object v5, v1, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    .line 1200
    iget-object v1, p0, Lcom/twitter/library/client/br;->a:Lcom/twitter/library/client/bk;

    invoke-static {v1}, Lcom/twitter/library/client/bk;->c(Lcom/twitter/library/client/bk;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/client/Session;

    .line 1201
    if-nez v1, :cond_1

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    iget v2, p0, Lcom/twitter/library/client/br;->b:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1246
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/library/client/br;->a:Lcom/twitter/library/client/bk;

    invoke-static {v0}, Lcom/twitter/library/client/bk;->d(Lcom/twitter/library/client/bk;)V

    .line 1248
    iget-object v0, p0, Lcom/twitter/library/client/br;->a:Lcom/twitter/library/client/bk;

    invoke-static {v0, v5}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Ljava/lang/String;)Z

    move-result v0

    .line 1249
    sget-object v2, Lcom/twitter/library/client/Session$LoginStatus;->a:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    .line 1250
    iget-object v2, p0, Lcom/twitter/library/client/br;->a:Lcom/twitter/library/client/bk;

    invoke-static {v2, v1, v0}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Z)V

    .line 1251
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->a()V

    goto :goto_0

    .line 1206
    :pswitch_1
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v6, v3, [Ljava/lang/String;

    const-string/jumbo v7, "api::verify_credentials:unauthorized:check"

    aput-object v7, v6, v4

    .line 1207
    invoke-virtual {v2, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 1206
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 1208
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v2

    .line 1211
    if-eqz v2, :cond_3

    iget v6, v2, Lcom/twitter/internal/network/k;->a:I

    const/16 v7, 0x191

    if-ne v6, v7, :cond_2

    iget v2, v2, Lcom/twitter/internal/network/k;->j:I

    const/16 v6, 0x59

    if-ne v2, v6, :cond_2

    move v2, v3

    .line 1216
    :goto_1
    if-eqz v2, :cond_0

    .line 1218
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v0

    iget v0, v0, Lcom/twitter/internal/network/k;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1219
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v6, "api::verify_credentials:unauthorized:logout"

    aput-object v6, v3, v4

    .line 1220
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1221
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 1222
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1224
    const-string/jumbo v0, "SessionManager"

    const-string/jumbo v2, "Invalid credentials. The auth token has expired."

    invoke-static {v0, v2}, Lcjw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    iget-object v0, p0, Lcom/twitter/library/client/br;->a:Lcom/twitter/library/client/bk;

    invoke-static {v0}, Lcom/twitter/library/client/bk;->d(Lcom/twitter/library/client/bk;)V

    .line 1227
    iget-object v0, p0, Lcom/twitter/library/client/br;->a:Lcom/twitter/library/client/bk;

    invoke-static {v0}, Lcom/twitter/library/client/bk;->e(Lcom/twitter/library/client/bk;)Landroid/content/Context;

    .line 1228
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/util/b;->b(Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    .line 1229
    if-eqz v0, :cond_0

    .line 1233
    iget-object v2, p0, Lcom/twitter/library/client/br;->a:Lcom/twitter/library/client/bk;

    invoke-static {v2, v5}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Ljava/lang/String;)Z

    move-result v2

    .line 1236
    invoke-virtual {v0, v8}, Lcom/twitter/app/common/account/a;->b(Ljava/lang/String;)V

    .line 1237
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/twitter/app/common/account/d;->a(Ljava/lang/String;)V

    .line 1238
    sget-object v0, Lcom/twitter/library/client/Session$LoginStatus;->a:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    .line 1239
    iget-object v0, p0, Lcom/twitter/library/client/br;->a:Lcom/twitter/library/client/bk;

    invoke-static {v0, v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;)V

    .line 1240
    iget-object v0, p0, Lcom/twitter/library/client/br;->a:Lcom/twitter/library/client/bk;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Z)V

    .line 1241
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->a()V

    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 1211
    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_1

    .line 1204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
