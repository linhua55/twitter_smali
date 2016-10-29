.class final Lcom/twitter/badge/b;
.super Lcom/twitter/library/client/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twitter/library/client/bk;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/bk;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/twitter/badge/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/badge/b;->b:Lcom/twitter/library/client/bk;

    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/badge/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;Z)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/badge/b;->b:Lcom/twitter/library/client/bk;

    invoke-virtual {v0, p1}, Lcom/twitter/library/client/bk;->d(Lcom/twitter/library/client/Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/twitter/badge/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->b(Landroid/content/Context;)V

    .line 61
    :cond_0
    return-void
.end method
