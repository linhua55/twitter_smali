.class public Lcom/twitter/library/api/moments/maker/s;
.super Lbab;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbab",
        "<",
        "Lcom/twitter/library/api/moments/maker/RecommendationType;",
        "Lcom/twitter/model/moments/maker/af;",
        "Lcom/twitter/library/api/moments/maker/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/Session;

.field private c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lbab;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/twitter/library/api/moments/maker/s;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/twitter/library/api/moments/maker/s;->b:Lcom/twitter/library/client/Session;

    .line 29
    iput-wide p3, p0, Lcom/twitter/library/api/moments/maker/s;->c:J

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/library/api/moments/maker/RecommendationType;)Lcom/twitter/library/api/moments/maker/r;
    .locals 7

    .prologue
    .line 41
    new-instance v1, Lcom/twitter/library/api/moments/maker/r;

    iget-object v2, p0, Lcom/twitter/library/api/moments/maker/s;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/library/api/moments/maker/s;->b:Lcom/twitter/library/client/Session;

    iget-wide v4, p0, Lcom/twitter/library/api/moments/maker/s;->c:J

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/api/moments/maker/r;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcom/twitter/library/api/moments/maker/RecommendationType;)V

    return-object v1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/twitter/library/service/x;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcom/twitter/library/api/moments/maker/RecommendationType;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/moments/maker/s;->a(Lcom/twitter/library/api/moments/maker/RecommendationType;)Lcom/twitter/library/api/moments/maker/r;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/library/api/moments/maker/r;)Lcom/twitter/model/moments/maker/af;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/twitter/library/api/moments/maker/r;->e()Lcom/twitter/model/moments/maker/af;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twitter/library/service/x;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcom/twitter/library/api/moments/maker/r;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/moments/maker/s;->a(Lcom/twitter/library/api/moments/maker/r;)Lcom/twitter/model/moments/maker/af;

    move-result-object v0

    return-object v0
.end method
