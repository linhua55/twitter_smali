.class public Lciu;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/util/object/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/i",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final e:Lcom/twitter/util/object/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/i",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/twitter/library/scribe/TwitterScribeItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/util/object/i;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/util/object/i;Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/util/object/i",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            "Lcom/twitter/util/object/i",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lciu;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lciu;->b:Lcom/twitter/util/object/i;

    .line 51
    iput-object p3, p0, Lciu;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 52
    iput-object p4, p0, Lciu;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 53
    iput-object p5, p0, Lciu;->e:Lcom/twitter/util/object/i;

    .line 54
    iput-object p6, p0, Lciu;->f:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 55
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 6

    .prologue
    .line 157
    iget-object v0, p0, Lciu;->e:Lcom/twitter/util/object/i;

    invoke-interface {v0}, Lcom/twitter/util/object/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 158
    invoke-static {v0}, Lcom/twitter/model/core/Tweet;->b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lciu;->b:Lcom/twitter/util/object/i;

    invoke-interface {v2}, Lcom/twitter/util/object/i;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Lciu;->a:Landroid/content/Context;

    iget-object v4, p0, Lciu;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v5, 0x0

    .line 160
    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    iget-object v2, p0, Lciu;->f:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 161
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lciu;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 162
    invoke-static {v4, v1, p2, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 159
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lciu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    const-string/jumbo v1, "tweet::tweet::impression"

    .line 150
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lciu;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 151
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 149
    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    iget-object v0, p0, Lciu;->e:Lcom/twitter/util/object/i;

    invoke-interface {v0}, Lcom/twitter/util/object/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 142
    const-string/jumbo v1, "avatar"

    const-string/jumbo v2, "profile_click"

    invoke-direct {p0, v4, v1, v2}, Lciu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    iget-wide v2, v0, Lcom/twitter/model/core/Tweet;->o:J

    .line 143
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(JLcss;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    iget-object v1, p0, Lciu;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 144
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 145
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 120
    const-string/jumbo v0, "tweet"

    const-string/jumbo v1, "quoted_tweet"

    const-string/jumbo v2, "click"

    invoke-direct {p0, v0, v1, v2}, Lciu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    iget-object v1, p0, Lciu;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 121
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 122
    return-void
.end method

.method a(Lcom/twitter/library/api/PromotedEvent;)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lciu;->e:Lcom/twitter/util/object/i;

    invoke-interface {v0}, Lcom/twitter/util/object/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 167
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    invoke-static {p1, v0}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcfv;->a()Lcft;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 172
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/av;)V
    .locals 3

    .prologue
    .line 111
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->f:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p0, v0}, Lciu;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 112
    const/4 v0, 0x0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "mention_click"

    invoke-direct {p0, v0, v1, v2}, Lciu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/core/av;->i:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p1, Lcom/twitter/model/core/av;->i:Ljava/lang/String;

    .line 114
    invoke-static {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lciu;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 115
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 116
    return-void
.end method

.method public a(Lcom/twitter/model/core/b;)V
    .locals 3

    .prologue
    .line 103
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->u:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p0, v0}, Lciu;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 104
    const/4 v0, 0x0

    const-string/jumbo v1, "cashtag"

    const-string/jumbo v2, "search"

    invoke-direct {p0, v0, v1, v2}, Lciu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/core/b;->c:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lciu;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 106
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 107
    return-void
.end method

.method public a(Lcom/twitter/model/core/q;)V
    .locals 3

    .prologue
    .line 95
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->e:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p0, v0}, Lciu;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 96
    const/4 v0, 0x0

    const-string/jumbo v1, "hashtag"

    const-string/jumbo v2, "search"

    invoke-direct {p0, v0, v1, v2}, Lciu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/core/q;->c:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lciu;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 98
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 99
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lciu;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 64
    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->c()Lcom/twitter/library/scribe/ScribeItem;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 65
    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lciu;->e()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lciu;->f()Lcom/twitter/library/api/d;

    move-result-object v2

    .line 72
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-direct {p0, p1, p2}, Lciu;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v3

    .line 77
    const-string/jumbo v4, "app_download_client_event"

    invoke-virtual {v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->h(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 78
    const-string/jumbo v4, "4"

    invoke-virtual {v3, v4, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 81
    invoke-static {v0, v1}, Lcom/twitter/library/util/an;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "3"

    invoke-virtual {v3, v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 84
    if-eqz v2, :cond_2

    .line 85
    const-string/jumbo v0, "6"

    .line 86
    invoke-virtual {v2}, Lcom/twitter/library/api/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v3, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 87
    invoke-virtual {v2}, Lcom/twitter/library/api/d;->b()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Z)Lcom/twitter/library/scribe/ScribeLog;

    .line 89
    :cond_2
    invoke-static {v3}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 126
    const-string/jumbo v0, "tweet"

    const-string/jumbo v1, "tweet_analytics"

    const-string/jumbo v2, "click"

    invoke-direct {p0, v0, v1, v2}, Lciu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 127
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->c:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p0, v0}, Lciu;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 131
    invoke-direct {p0}, Lciu;->g()V

    .line 132
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->d:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p0, v0}, Lciu;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 136
    invoke-direct {p0}, Lciu;->g()V

    .line 137
    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Lcom/twitter/util/ak;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Lcom/twitter/library/api/d;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 181
    sget-object v0, Lcom/twitter/library/client/u;->a:Lcom/twitter/library/client/u;

    invoke-virtual {v0}, Lcom/twitter/library/client/u;->a()Lcom/twitter/library/api/d;

    move-result-object v0

    return-object v0
.end method
