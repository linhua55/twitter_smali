.class public Lcly;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lclw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcls;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 556
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcly;->a:Ljava/lang/String;

    .line 557
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcly;->b:Ljava/lang/String;

    .line 558
    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcly;->c:Ljava/util/Map;

    .line 559
    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcly;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcly;
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcly;->a:Ljava/lang/String;

    .line 566
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcly;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcls;",
            ">;)",
            "Lcly;"
        }
    .end annotation

    .prologue
    .line 577
    iput-object p1, p0, Lcly;->c:Ljava/util/Map;

    .line 578
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcly;
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcly;->b:Ljava/lang/String;

    .line 572
    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcly;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Lcly;"
        }
    .end annotation

    .prologue
    .line 583
    iput-object p1, p0, Lcly;->d:Ljava/util/Map;

    .line 584
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcly;
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcly;->e:Ljava/lang/String;

    .line 590
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 555
    invoke-virtual {p0}, Lcly;->e()Lclw;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcly;
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcly;->f:Ljava/lang/String;

    .line 596
    return-object p0
.end method

.method protected e()Lclw;
    .locals 8

    .prologue
    .line 602
    new-instance v0, Lclw;

    iget-object v1, p0, Lcly;->a:Ljava/lang/String;

    iget-object v2, p0, Lcly;->b:Ljava/lang/String;

    iget-object v3, p0, Lcly;->d:Ljava/util/Map;

    iget-object v4, p0, Lcly;->e:Ljava/lang/String;

    iget-object v5, p0, Lcly;->f:Ljava/lang/String;

    iget-object v6, p0, Lcly;->c:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lclw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lclx;)V

    return-object v0
.end method
