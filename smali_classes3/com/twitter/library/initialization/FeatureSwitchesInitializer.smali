.class public Lcom/twitter/library/initialization/FeatureSwitchesInitializer;
.super Lauo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauo",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/twitter/library/client/bj;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/twitter/library/initialization/c;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/initialization/c;-><init>(Lcom/twitter/library/initialization/FeatureSwitchesInitializer;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/initialization/FeatureSwitchesInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 24
    invoke-static {p1}, Lcbq;->a(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 26
    invoke-direct {p0, p1}, Lcom/twitter/library/initialization/FeatureSwitchesInitializer;->a(Landroid/content/Context;)Lcom/twitter/library/client/bj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 27
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcbq;->a(J)V

    .line 29
    const-string/jumbo v0, "fs:first_download_req"

    .line 30
    invoke-static {}, Layj;->b()Layj;

    move-result-object v1

    sget-object v2, Laxz;->m:Laye;

    .line 29
    invoke-static {v0, v1, v2}, Layp;->a(Ljava/lang/String;Layj;Laye;)Layp;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0}, Layp;->j()V

    .line 35
    invoke-static {}, Lcbo;->a()V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {v0}, Layp;->k()V

    goto :goto_0
.end method
