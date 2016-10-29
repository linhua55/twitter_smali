.class public Lvt;
.super Lcom/twitter/library/client/ad;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    .line 38
    iput-object p1, p0, Lvt;->a:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 47
    :try_start_0
    invoke-static {}, Lvr;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    iget-object v2, p0, Lvt;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lvs;->a(Landroid/content/Context;J)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {v0, v1}, Lvs;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Lbiv;

    invoke-direct {v1, v0}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lbix;->a(Lbiv;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/client/Session;Z)V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvs;->b(J)V

    .line 61
    return-void
.end method
