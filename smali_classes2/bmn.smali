.class public Lbmn;
.super Lcom/twitter/library/service/b;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/b",
        "<",
        "Lbmo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lbmo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lbmo;

    invoke-direct {v0}, Lbmo;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lbmn;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lbmo;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lbmo;)V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lbmn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 33
    iput-object p3, p0, Lbmn;->a:Lbmo;

    .line 34
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lbmn;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->a:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 40
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "amplify/categories"

    aput-object v3, v1, v2

    .line 41
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lbmo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lbmn;->a:Lbmo;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/av/MonetizationCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lbmn;->a:Lbmo;

    invoke-virtual {v0}, Lbmo;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lbmn;->b()Lbmo;

    move-result-object v0

    return-object v0
.end method
