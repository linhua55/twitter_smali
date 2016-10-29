.class public Lahl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lahp;


# instance fields
.field final synthetic a:Lahi;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lahi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lahl;->a:Lahi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lahl;->b:Ljava/lang/String;

    .line 226
    return-void
.end method

.method static synthetic a(Lahl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lahl;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lahl;->a:Lahi;

    invoke-static {v0}, Lahi;->a(Lahi;)Lrx/o;

    move-result-object v0

    new-instance v1, Lahm;

    invoke-direct {v1, p0, p1, p2, p3}, Lahm;-><init>(Lahl;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    .line 259
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lahl;->a:Lahi;

    const-string/jumbo v1, "moments:modern_guide:%s:moment:follow"

    iget-object v2, p0, Lahl;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1, v2}, Lahi;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lahl;->a:Lahi;

    const-string/jumbo v1, "moments:modern_guide:%s:moment:unfollow"

    iget-object v2, p0, Lahl;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1, v2}, Lahi;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 239
    const-string/jumbo v0, "moments:modern_guide:%s:moment:click"

    invoke-direct {p0, p1, p2, v0}, Lahl;->a(JLjava/lang/String;)V

    .line 240
    return-void
.end method

.method public d(J)V
    .locals 1

    .prologue
    .line 243
    const-string/jumbo v0, "moments:modern_guide:%s:moment:impression"

    invoke-direct {p0, p1, p2, v0}, Lahl;->a(JLjava/lang/String;)V

    .line 244
    return-void
.end method

.method public e(J)V
    .locals 1

    .prologue
    .line 247
    const-string/jumbo v0, "moments:modern_guide:%s:cta:click"

    invoke-direct {p0, p1, p2, v0}, Lahl;->a(JLjava/lang/String;)V

    .line 248
    return-void
.end method
