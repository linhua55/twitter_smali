.class Lcom/twitter/android/revenue/card/ah;
.super Lcom/twitter/library/service/b;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/bf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/b",
        "<",
        "Lcom/twitter/library/api/as;",
        ">;",
        "Lcom/twitter/library/client/bf;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Lcom/twitter/android/revenue/card/ai;

.field private j:Lcom/twitter/library/service/z;

.field private k:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/card/CardContext;Lcom/twitter/android/revenue/card/ai;)V
    .locals 6

    .prologue
    .line 46
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/revenue/card/ah;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/card/CardContext;Lcom/twitter/android/revenue/card/ai;)V

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/card/CardContext;Lcom/twitter/android/revenue/card/ai;)V
    .locals 2

    .prologue
    .line 51
    const-class v0, Lcom/twitter/android/revenue/card/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 52
    iput-object p1, p0, Lcom/twitter/android/revenue/card/ah;->a:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/twitter/android/revenue/card/ah;->g:Ljava/lang/String;

    .line 54
    invoke-virtual {p4}, Lcom/twitter/library/card/CardContext;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/revenue/card/ah;->c:J

    .line 55
    invoke-virtual {p4}, Lcom/twitter/library/card/CardContext;->i()Lcss;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcss;->c:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/revenue/card/ah;->b:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/twitter/android/revenue/card/ah;->i:Lcom/twitter/android/revenue/card/ai;

    .line 58
    iput-object p3, p0, Lcom/twitter/android/revenue/card/ah;->h:Ljava/lang/String;

    .line 59
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 5

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/ah;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 65
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ah;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 67
    const-string/jumbo v1, "impression_id"

    iget-object v2, p0, Lcom/twitter/android/revenue/card/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ah;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const-string/jumbo v1, "zipcode"

    iget-object v2, p0, Lcom/twitter/android/revenue/card/ah;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 72
    :cond_1
    const-string/jumbo v1, "tweet_id"

    iget-wide v2, p0, Lcom/twitter/android/revenue/card/ah;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 73
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ah;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 74
    if-eqz v1, :cond_2

    .line 75
    const-string/jumbo v2, "lang"

    invoke-static {v1}, Lcom/twitter/util/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 77
    :cond_2
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->h()Lcom/twitter/model/account/OAuthToken;

    move-result-object v1

    .line 79
    new-instance v2, Lcom/twitter/library/network/aa;

    invoke-direct {v2, v1}, Lcom/twitter/library/network/aa;-><init>(Lcom/twitter/model/account/OAuthToken;)V

    .line 80
    invoke-virtual {v0, v2}, Lcom/twitter/library/service/e;->a(Lcom/twitter/library/network/a;)Lcom/twitter/library/service/e;

    .line 81
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ah;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/service/e;->c(Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/service/e;->b(Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/library/service/e;->b([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    .line 83
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public a(ILcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/library/service/b;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V

    .line 111
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p3}, Lcom/twitter/library/api/as;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/ah;->k:Ljava/lang/String;

    .line 114
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 33
    check-cast p3, Lcom/twitter/library/api/as;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/revenue/card/ah;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/api/as;
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x5f

    invoke-static {v0}, Lcom/twitter/library/api/as;->a(I)Lcom/twitter/library/api/as;

    move-result-object v0

    return-object v0
.end method

.method public b(ILcom/twitter/library/service/x;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-virtual {p2}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 120
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    .line 122
    :goto_1
    iget-object v2, p0, Lcom/twitter/android/revenue/card/ah;->i:Lcom/twitter/android/revenue/card/ai;

    .line 123
    if-eqz v2, :cond_0

    .line 124
    iget-object v3, p0, Lcom/twitter/android/revenue/card/ah;->k:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/twitter/android/revenue/card/ai;->a(ZLjava/lang/String;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/ah;->h()V

    .line 128
    iput-object v1, p0, Lcom/twitter/android/revenue/card/ah;->i:Lcom/twitter/android/revenue/card/ai;

    .line 129
    return-void

    :cond_1
    move-object v0, v1

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method e()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/twitter/library/client/bg;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/twitter/library/client/bg;-><init>(ILcom/twitter/library/client/bf;)V

    iput-object v1, p0, Lcom/twitter/android/revenue/card/ah;->j:Lcom/twitter/library/service/z;

    .line 94
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ah;->j:Lcom/twitter/library/service/z;

    invoke-virtual {v0, p0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 95
    return-void
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/ah;->b()Lcom/twitter/library/api/as;

    move-result-object v0

    return-object v0
.end method

.method g()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/ah;->h()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/ah;->i:Lcom/twitter/android/revenue/card/ai;

    .line 134
    return-void
.end method

.method h()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ah;->j:Lcom/twitter/library/service/z;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->b(Lcom/twitter/library/service/z;)V

    .line 139
    return-void
.end method
