.class Lcom/twitter/library/client/x;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/client/v;


# direct methods
.method private constructor <init>(Lcom/twitter/library/client/v;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/twitter/library/client/x;->a:Lcom/twitter/library/client/v;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/client/v;Lcom/twitter/library/client/w;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/twitter/library/client/x;-><init>(Lcom/twitter/library/client/v;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 113
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/library/client/x;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 10

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/twitter/library/client/x;->a:Lcom/twitter/library/client/v;

    invoke-static {v1}, Lcom/twitter/library/client/v;->b(Lcom/twitter/library/client/v;)Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 118
    new-instance v2, Lcom/twitter/library/client/l;

    iget-object v3, p0, Lcom/twitter/library/client/x;->a:Lcom/twitter/library/client/v;

    invoke-static {v3}, Lcom/twitter/library/client/v;->a(Lcom/twitter/library/client/v;)Landroid/content/Context;

    move-result-object v3

    .line 119
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 120
    if-eqz v0, :cond_0

    .line 121
    instance-of v0, p1, Lbtq;

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/twitter/library/util/an;->a:Ljava/util/Random;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 126
    invoke-virtual {v2}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v1

    const-string/jumbo v2, "app_graph_timestamp"

    .line 127
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string/jumbo v0, ""

    .line 132
    instance-of v2, p1, Lbts;

    if-eqz v2, :cond_3

    .line 133
    check-cast p1, Lbts;

    invoke-virtual {p1}, Lbts;->g()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/twitter/library/client/x;->a:Lcom/twitter/library/client/v;

    invoke-virtual {v2, v0}, Lcom/twitter/library/client/v;->b(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v2, "optin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/twitter/library/client/x;->a:Lcom/twitter/library/client/v;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/twitter/library/client/v;->a(Lcom/twitter/library/client/v;J)V

    goto :goto_0

    .line 134
    :cond_3
    instance-of v2, p1, Lbtt;

    if-eqz v2, :cond_2

    .line 135
    check-cast p1, Lbtt;

    invoke-virtual {p1}, Lbtt;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
