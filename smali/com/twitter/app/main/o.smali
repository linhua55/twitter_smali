.class Lcom/twitter/app/main/o;
.super Lcom/twitter/library/client/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/app/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/twitter/app/main/MainActivity;)V
    .locals 0

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/twitter/app/main/o;->a:Lcom/twitter/app/main/MainActivity;

    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    .line 1695
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/twitter/app/main/o;->a:Lcom/twitter/app/main/MainActivity;

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/app/main/MainActivity;->a(Lcom/twitter/app/main/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1700
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;Z)V
    .locals 1

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/twitter/app/main/o;->a:Lcom/twitter/app/main/MainActivity;

    iget-object v0, v0, Lcom/twitter/app/main/MainActivity;->i:Lcom/twitter/app/main/h;

    invoke-virtual {v0, p1}, Lcom/twitter/app/main/h;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1706
    return-void
.end method

.method public c(Lcom/twitter/library/client/Session;)V
    .locals 3

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/twitter/app/main/o;->a:Lcom/twitter/app/main/MainActivity;

    invoke-static {v0}, Lcom/twitter/app/main/MainActivity;->a(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/library/client/Session;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/twitter/app/main/o;->a:Lcom/twitter/app/main/MainActivity;

    invoke-static {v0}, Lcom/twitter/app/main/MainActivity;->b(Lcom/twitter/app/main/MainActivity;)V

    .line 1712
    iget-object v0, p0, Lcom/twitter/app/main/o;->a:Lcom/twitter/app/main/MainActivity;

    invoke-static {v0}, Lcom/twitter/app/main/MainActivity;->c(Lcom/twitter/app/main/MainActivity;)V

    .line 1713
    iget-object v0, p0, Lcom/twitter/app/main/o;->a:Lcom/twitter/app/main/MainActivity;

    invoke-static {v0}, Lcom/twitter/app/main/MainActivity;->d(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 1714
    iget-object v1, p0, Lcom/twitter/app/main/o;->a:Lcom/twitter/app/main/MainActivity;

    invoke-virtual {v1}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcyj;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 1716
    :cond_0
    return-void
.end method
