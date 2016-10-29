.class public Laax;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Lcom/twitter/library/card/bf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Laax;->a:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Laax;->b:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Laax;->c:Lcom/twitter/library/card/bf;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Laax;->c:Lcom/twitter/library/card/bf;

    invoke-virtual {v0}, Lcom/twitter/library/card/bf;->c()V

    .line 54
    iget-object v0, p0, Laax;->c:Lcom/twitter/library/card/bf;

    invoke-virtual {v0}, Lcom/twitter/library/card/bf;->b()V

    .line 56
    :cond_0
    return-void
.end method

.method public a(JLcom/twitter/library/card/bg;)V
    .locals 7

    .prologue
    .line 43
    iget-object v0, p0, Laax;->c:Lcom/twitter/library/card/bf;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/twitter/library/card/l;->a()Lcom/twitter/library/card/l;

    move-result-object v2

    .line 45
    new-instance v1, Lcom/twitter/library/card/bf;

    iget-object v0, p0, Laax;->a:Landroid/content/Context;

    .line 46
    invoke-virtual {v2, v0}, Lcom/twitter/library/card/l;->a(Landroid/content/Context;)Lcom/twitter/library/card/a;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/card/bf;-><init>(Lcom/twitter/library/card/al;Lcom/twitter/library/card/a;JLcom/twitter/library/card/bg;)V

    iput-object v1, p0, Laax;->c:Lcom/twitter/library/card/bf;

    .line 48
    :cond_0
    iget-object v0, p0, Laax;->c:Lcom/twitter/library/card/bf;

    invoke-virtual {v0}, Lcom/twitter/library/card/bf;->a()V

    .line 49
    return-void
.end method

.method public a(Lcdq;)V
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Laax;->c:Lcom/twitter/library/card/bf;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcdq;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lcdq;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcdq;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/twitter/library/card/c;

    invoke-direct {v0}, Lcom/twitter/library/card/c;-><init>()V

    .line 34
    const-string/jumbo v1, "twitter:string:card_uri"

    invoke-virtual {p1}, Lcdq;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 35
    const-string/jumbo v1, "twitter:string:cards_platform"

    const-string/jumbo v2, "Android-12"

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 36
    const-string/jumbo v1, "twitter:string:response_card_name"

    iget-object v2, p0, Laax;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 37
    const-string/jumbo v1, "twitter:text:id"

    invoke-virtual {p1}, Lcdq;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 38
    iget-object v1, p0, Laax;->c:Lcom/twitter/library/card/bf;

    invoke-virtual {p1}, Lcdq;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/card/bf;->a(Ljava/lang/String;Lcom/twitter/library/card/c;)I

    .line 40
    :cond_0
    return-void
.end method
