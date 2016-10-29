.class public Lcom/twitter/android/browser/h;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcfw;

.field private final c:Lcom/twitter/library/client/BrowserDataSource;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Lcom/twitter/library/scribe/TwitterScribeLog;

.field private final g:J

.field private final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/twitter/library/client/BrowserDataSource;Lcfw;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/twitter/android/browser/h;->a:Landroid/content/Context;

    .line 46
    iput-wide p2, p0, Lcom/twitter/android/browser/h;->g:J

    .line 47
    iput-object p4, p0, Lcom/twitter/android/browser/h;->c:Lcom/twitter/library/client/BrowserDataSource;

    .line 48
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/twitter/library/client/BrowserDataSource;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/browser/h;->h:Z

    .line 49
    iput-object p5, p0, Lcom/twitter/android/browser/h;->b:Lcfw;

    .line 50
    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/twitter/library/client/BrowserDataSource;->d()Lclw;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-interface {p4}, Lcom/twitter/library/client/BrowserDataSource;->d()Lclw;

    move-result-object v0

    invoke-virtual {v0}, Lclw;->N()Lclm;

    move-result-object v0

    .line 52
    :goto_1
    if-eqz v0, :cond_2

    .line 53
    const-string/jumbo v1, "website_url"

    invoke-static {v1, v0}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/browser/h;->d:Ljava/lang/String;

    .line 54
    const-string/jumbo v1, "website_dest_url"

    invoke-static {v1, v0}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/browser/h;->e:Ljava/lang/String;

    .line 59
    :goto_2
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 51
    goto :goto_1

    .line 56
    :cond_2
    iput-object v1, p0, Lcom/twitter/android/browser/h;->d:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/twitter/android/browser/h;->e:Ljava/lang/String;

    goto :goto_2
.end method

.method private a(Lcom/twitter/library/scribe/TwitterScribeLog;)V
    .locals 0

    .prologue
    .line 131
    invoke-static {p1}, Lbjf;->a(Lbjh;)V

    .line 132
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "load_started"

    invoke-virtual {p0, v0}, Lcom/twitter/android/browser/h;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/browser/h;->f:Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 66
    return-void
.end method

.method a(J)V
    .locals 7

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/twitter/android/browser/h;->h:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 77
    :cond_0
    return-void

    .line 72
    :cond_1
    sget-object v0, Lcom/twitter/library/client/BrowserTimingHelper$Dwell;->a:Lcom/twitter/library/client/BrowserTimingHelper$Dwell;

    .line 73
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/client/BrowserTimingHelper$Dwell;->c()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gez v1, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/twitter/library/client/BrowserTimingHelper$Dwell;->a()Lcom/twitter/library/api/PromotedEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/browser/h;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 75
    invoke-virtual {v0}, Lcom/twitter/library/client/BrowserTimingHelper$Dwell;->b()Lcom/twitter/library/client/BrowserTimingHelper$Dwell;

    move-result-object v0

    goto :goto_0
.end method

.method a(JJ)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/twitter/android/browser/h;->c:Lcom/twitter/library/client/BrowserDataSource;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string/jumbo v0, "dismiss"

    invoke-virtual {p0, v0}, Lcom/twitter/android/browser/h;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 102
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 103
    invoke-direct {p0, v0}, Lcom/twitter/android/browser/h;->a(Lcom/twitter/library/scribe/TwitterScribeLog;)V

    goto :goto_0
.end method

.method a(JLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/android/browser/h;->c:Lcom/twitter/library/client/BrowserDataSource;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/browser/h;->f:Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0, v0}, Lcom/twitter/android/browser/h;->a(Lcom/twitter/library/scribe/TwitterScribeLog;)V

    .line 112
    const-string/jumbo v0, "load_finished"

    invoke-virtual {p0, v0}, Lcom/twitter/android/browser/h;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 114
    invoke-static {p3}, Lcom/twitter/library/util/an;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 115
    invoke-direct {p0, v0}, Lcom/twitter/android/browser/h;->a(Lcom/twitter/library/scribe/TwitterScribeLog;)V

    goto :goto_0
.end method

.method a(Lcom/twitter/library/api/PromotedEvent;)V
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/twitter/android/browser/h;->h:Z

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/browser/h;->c:Lcom/twitter/library/client/BrowserDataSource;

    invoke-interface {v0}, Lcom/twitter/library/client/BrowserDataSource;->c()Lcss;

    move-result-object v0

    invoke-static {p1, v0}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcfv;->a()Lcft;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/twitter/android/browser/h;->b:Lcfw;

    invoke-virtual {v1, v0}, Lcfw;->a(Lcft;)V

    goto :goto_0
.end method

.method a(Lcom/twitter/library/scribe/WebsiteAssetsLog;)V
    .locals 4

    .prologue
    .line 135
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/browser/h;->g:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const-string/jumbo v1, "asset_prefetching_event"

    .line 136
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->h(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "web_view::::assets_loaded"

    aput-object v3, v1, v2

    .line 137
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/browser/h;->a:Landroid/content/Context;

    .line 138
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 139
    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/WebsiteAssetsLog;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 141
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/android/browser/h;->c:Lcom/twitter/library/client/BrowserDataSource;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twitter/android/browser/h;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    if-nez p2, :cond_1

    move v1, v2

    .line 154
    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-lt v1, v0, :cond_3

    const/16 v0, 0xf

    if-gt v1, v0, :cond_3

    .line 155
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 157
    :cond_0
    invoke-static {p2}, Lcom/twitter/util/collection/ImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 160
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 161
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/browser/h;->g:J

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "web_view::::tco_resolution"

    aput-object v4, v3, v2

    .line 162
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 163
    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 164
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    invoke-static {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    goto :goto_1

    .line 151
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 167
    :cond_2
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 170
    :cond_3
    return-void
.end method

.method b(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 120
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/browser/h;->g:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "web_view::::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 121
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/browser/h;->d:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/browser/h;->e:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->m(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 124
    iget-object v1, p0, Lcom/twitter/android/browser/h;->c:Lcom/twitter/library/client/BrowserDataSource;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/twitter/android/browser/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/browser/h;->c:Lcom/twitter/library/client/BrowserDataSource;

    invoke-interface {v2}, Lcom/twitter/library/client/BrowserDataSource;->e()Lcom/twitter/library/scribe/ScribeItemsProvider;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/scribe/ScribeItemsProvider;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 127
    :cond_0
    return-object v0
.end method
