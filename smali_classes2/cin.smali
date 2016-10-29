.class public Lcin;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcin;->a:Landroid/content/res/Resources;

    .line 24
    return-void
.end method

.method private static b()J
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;JLcom/twitter/model/core/av;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    if-nez p4, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-wide v0, p4, Lcom/twitter/model/core/av;->c:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_1

    .line 95
    sget v0, Lbkb;->consumption_reply_context_to_you:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    sget v0, Lbkb;->consumption_reply_context_to_someone:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p4}, Lcom/twitter/model/core/av;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcin;->b()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcin;->a(Lcom/twitter/model/core/Tweet;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/core/Tweet;J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/twitter/library/widget/TweetView;->c:Lcom/twitter/ui/view/s;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcin;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcin;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcin;->a:Landroid/content/res/Resources;

    invoke-static {p1}, Lciz;->l(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/core/av;

    move-result-object v1

    invoke-virtual {p0, v0, p3, p4, v1}, Lcin;->a(Landroid/content/res/Resources;JLcom/twitter/model/core/av;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/ay;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcin;->b()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcin;->a(Lcom/twitter/model/core/ay;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/core/ay;J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcin;->b(Lcom/twitter/model/core/ay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcin;->a:Landroid/content/res/Resources;

    invoke-static {p1}, Lciz;->c(Lcom/twitter/model/core/ay;)Lcom/twitter/model/core/av;

    move-result-object v1

    invoke-virtual {p0, v0, p2, p3, v1}, Lcin;->a(Landroid/content/res/Resources;JLcom/twitter/model/core/av;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->i()Z

    move-result v0

    return v0
.end method

.method protected a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;)Z
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/twitter/ui/view/s;->d:Z

    if-nez v0, :cond_0

    .line 111
    invoke-static {p1}, Lciz;->h(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcin;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/twitter/model/core/ay;)Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/twitter/model/core/ay;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcin;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
