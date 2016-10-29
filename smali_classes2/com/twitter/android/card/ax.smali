.class public Lcom/twitter/android/card/ax;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/card/ay;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/android/card/ay;

    invoke-direct {v0}, Lcom/twitter/android/card/ay;-><init>()V

    invoke-direct {p0, v0}, Lcom/twitter/android/card/ax;-><init>(Lcom/twitter/android/card/ay;)V

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/twitter/android/card/ay;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/twitter/android/card/ax;->a:Lcom/twitter/android/card/ay;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "player_url"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/twitter/library/util/an;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/twitter/library/card/bc;->b()Lcom/twitter/library/card/bc;

    move-result-object v0

    const-string/jumbo v1, "4889131224:vine"

    invoke-virtual {v0, v1, p2}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/library/card/aw;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/library/card/aw;->a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 50
    :cond_0
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, p2, :cond_1

    .line 51
    iget-object v0, p0, Lcom/twitter/android/card/ax;->a:Lcom/twitter/android/card/ay;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/card/ay;->a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/android/card/av;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/ax;->a:Lcom/twitter/android/card/ay;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/card/ay;->b(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/android/av/card/l;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "player_url"

    invoke-static {v0, p2}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-eq p1, v1, :cond_0

    invoke-static {v0}, Lcom/twitter/library/util/an;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
