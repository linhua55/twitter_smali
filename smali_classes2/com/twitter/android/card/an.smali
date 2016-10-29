.class public Lcom/twitter/android/card/an;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/card/au;

.field private final c:Ljava/lang/String;

.field private d:Lcom/twitter/library/card/bf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/card/au;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/twitter/android/card/an;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/twitter/android/card/an;->b:Lcom/twitter/android/card/au;

    .line 26
    iput-object p3, p0, Lcom/twitter/android/card/an;->c:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/card/an;->d:Lcom/twitter/library/card/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/an;->b:Lcom/twitter/android/card/au;

    invoke-virtual {v0}, Lcom/twitter/android/card/au;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/an;->b:Lcom/twitter/android/card/au;

    .line 31
    invoke-virtual {v0}, Lcom/twitter/android/card/au;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/an;->b:Lcom/twitter/android/card/au;

    invoke-virtual {v0}, Lcom/twitter/android/card/au;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lcom/twitter/library/card/c;

    invoke-direct {v0}, Lcom/twitter/library/card/c;-><init>()V

    .line 33
    const-string/jumbo v1, "twitter:string:card_uri"

    iget-object v2, p0, Lcom/twitter/android/card/an;->b:Lcom/twitter/android/card/au;

    invoke-virtual {v2}, Lcom/twitter/android/card/au;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 34
    const-string/jumbo v1, "twitter:string:cards_platform"

    const-string/jumbo v2, "Android-12"

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 35
    const-string/jumbo v1, "twitter:string:response_card_name"

    iget-object v2, p0, Lcom/twitter/android/card/an;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 36
    const-string/jumbo v1, "twitter:text:id"

    iget-object v2, p0, Lcom/twitter/android/card/an;->b:Lcom/twitter/android/card/au;

    invoke-virtual {v2}, Lcom/twitter/android/card/au;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 37
    iget-object v1, p0, Lcom/twitter/android/card/an;->d:Lcom/twitter/library/card/bf;

    iget-object v2, p0, Lcom/twitter/android/card/an;->b:Lcom/twitter/android/card/au;

    invoke-virtual {v2}, Lcom/twitter/android/card/au;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/card/bf;->a(Ljava/lang/String;Lcom/twitter/library/card/c;)I

    .line 39
    :cond_0
    return-void
.end method

.method public a(JLcom/twitter/library/card/bg;)V
    .locals 7

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/android/card/an;->d:Lcom/twitter/library/card/bf;

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/twitter/library/card/l;->a()Lcom/twitter/library/card/l;

    move-result-object v2

    .line 44
    new-instance v1, Lcom/twitter/library/card/bf;

    iget-object v0, p0, Lcom/twitter/android/card/an;->a:Landroid/content/Context;

    .line 45
    invoke-virtual {v2, v0}, Lcom/twitter/library/card/l;->a(Landroid/content/Context;)Lcom/twitter/library/card/a;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/card/bf;-><init>(Lcom/twitter/library/card/al;Lcom/twitter/library/card/a;JLcom/twitter/library/card/bg;)V

    iput-object v1, p0, Lcom/twitter/android/card/an;->d:Lcom/twitter/library/card/bf;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/an;->d:Lcom/twitter/library/card/bf;

    invoke-virtual {v0}, Lcom/twitter/library/card/bf;->a()V

    .line 48
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/card/an;->d:Lcom/twitter/library/card/bf;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/twitter/android/card/an;->d:Lcom/twitter/library/card/bf;

    invoke-virtual {v0}, Lcom/twitter/library/card/bf;->c()V

    .line 53
    iget-object v0, p0, Lcom/twitter/android/card/an;->d:Lcom/twitter/library/card/bf;

    invoke-virtual {v0}, Lcom/twitter/library/card/bf;->b()V

    .line 55
    :cond_0
    return-void
.end method
