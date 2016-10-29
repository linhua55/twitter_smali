.class public Lcom/twitter/android/xv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/twitter/database/model/j",
        "<",
        "Lbeq;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v4/app/LoaderManager;

.field private final c:Lcom/twitter/android/xw;

.field private final d:I

.field private e:J

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/twitter/android/xw;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/twitter/android/xv;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/twitter/android/xv;->b:Landroid/support/v4/app/LoaderManager;

    .line 49
    iput-object p3, p0, Lcom/twitter/android/xv;->c:Lcom/twitter/android/xw;

    .line 50
    iput p4, p0, Lcom/twitter/android/xv;->d:I

    .line 51
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;J)V
    .locals 3

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/twitter/android/xv;->e:J

    .line 55
    iput-object p3, p0, Lcom/twitter/android/xv;->f:Ljava/lang/String;

    .line 56
    iput-wide p4, p0, Lcom/twitter/android/xv;->g:J

    .line 57
    iget-object v0, p0, Lcom/twitter/android/xv;->b:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/twitter/android/xv;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 58
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Lcom/twitter/database/model/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/twitter/database/model/j",
            "<",
            "Lbeq;",
            ">;>;",
            "Lcom/twitter/database/model/j",
            "<",
            "Lbeq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    if-eqz p2, :cond_0

    .line 102
    const-class v1, Lbeq;

    const-class v2, Lcom/twitter/model/core/TwitterUser;

    .line 103
    invoke-static {v1, v2}, Lcom/twitter/database/hydrator/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcmx;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/twitter/database/model/j;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcmx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/xv;->c:Lcom/twitter/android/xw;

    invoke-interface {v1, v0}, Lcom/twitter/android/xw;->c(Lcom/twitter/model/core/TwitterUser;)V

    .line 109
    return-void
.end method

.method public b(JLjava/lang/String;J)V
    .locals 3

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/twitter/android/xv;->e:J

    .line 62
    iput-object p3, p0, Lcom/twitter/android/xv;->f:Ljava/lang/String;

    .line 63
    iput-wide p4, p0, Lcom/twitter/android/xv;->g:J

    .line 64
    iget-object v0, p0, Lcom/twitter/android/xv;->b:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/twitter/android/xv;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 65
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/twitter/database/model/j",
            "<",
            "Lbeq;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lcom/twitter/android/xv;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 73
    sget-object v0, Lcom/twitter/library/provider/dl;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ownerId"

    iget-wide v2, p0, Lcom/twitter/android/xv;->g:J

    .line 75
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 77
    const-string/jumbo v1, "username=? COLLATE NOCASE"

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/xv;->f:Ljava/lang/String;

    aput-object v4, v0, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/xv;->a:Landroid/content/Context;

    iget-wide v4, p0, Lcom/twitter/android/xv;->g:J

    invoke-static {v0, v4, v5}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v0

    const-class v4, Lbep;

    invoke-interface {v0, v4}, Lcom/twitter/database/schema/TwitterSchema;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbep;

    invoke-interface {v0}, Lbep;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 91
    new-instance v4, Lbav;

    iget-object v5, p0, Lcom/twitter/android/xv;->a:Landroid/content/Context;

    invoke-direct {v4, v5, v0, v3}, Lbav;-><init>(Landroid/content/Context;Lcom/twitter/database/model/q;Landroid/net/Uri;)V

    sget-object v0, Lchr;->a:[Ljava/lang/String;

    .line 92
    invoke-virtual {v4, v0}, Lbav;->a([Ljava/lang/String;)Lbav;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v2}, Lbav;->a(Ljava/lang/String;)Lbav;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Lbav;->b([Ljava/lang/String;)Lbav;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lbav;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/Loader;

    .line 91
    return-object v0

    .line 80
    :cond_0
    sget-object v1, Lcom/twitter/library/provider/dl;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/xv;->e:J

    .line 81
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "ownerId"

    iget-wide v4, p0, Lcom/twitter/android/xv;->g:J

    .line 83
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v2, v0

    move-object v3, v1

    move-object v1, v0

    .line 86
    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p2, Lcom/twitter/database/model/j;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/xv;->a(Landroid/support/v4/content/Loader;Lcom/twitter/database/model/j;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/twitter/database/model/j",
            "<",
            "Lbeq;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 113
    return-void
.end method
