.class public Lbqi;
.super Lbqh;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcet;Lcom/twitter/library/client/Session;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcet;",
            "Lcom/twitter/library/client/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lbqh;-><init>(Landroid/content/Context;Lcet;Lcom/twitter/library/client/Session;Ljava/util/List;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "unsubscribe"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "app:twitter_event:moments:unsubscribe_request"

    return-object v0
.end method
