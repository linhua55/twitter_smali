.class public Ltu;
.super Lbab;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbab",
        "<",
        "Lcom/twitter/model/av/MonetizationCategory;",
        "Lcmf",
        "<",
        "Lcom/twitter/model/av/MonetizationCategory;",
        ">;",
        "Lbmn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lbab;-><init>()V

    .line 28
    iput-object p1, p0, Ltu;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Ltu;->b:Lcom/twitter/library/client/Session;

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/model/av/MonetizationCategory;)Lbmn;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lbmn;

    iget-object v1, p0, Ltu;->a:Landroid/content/Context;

    iget-object v2, p0, Ltu;->b:Lcom/twitter/library/client/Session;

    invoke-direct {v0, v1, v2}, Lbmn;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    return-object v0
.end method

.method protected a(Lbmn;)Lcmf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbmn;",
            ")",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/MonetizationCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcmo;

    invoke-virtual {p1}, Lbmn;->e()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcmo;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/twitter/library/service/x;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/twitter/model/av/MonetizationCategory;

    invoke-virtual {p0, p1}, Ltu;->a(Lcom/twitter/model/av/MonetizationCategory;)Lbmn;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twitter/library/service/x;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lbmn;

    invoke-virtual {p0, p1}, Ltu;->a(Lbmn;)Lcmf;

    move-result-object v0

    return-object v0
.end method
