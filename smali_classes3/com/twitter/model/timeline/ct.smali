.class public Lcom/twitter/model/timeline/ct;
.super Lcom/twitter/model/timeline/az;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/timeline/az",
        "<",
        "Lcom/twitter/model/timeline/cr;",
        "Lcom/twitter/model/timeline/ct;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/ay;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lctl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/twitter/model/timeline/az;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/timeline/ct;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/model/timeline/ct;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/model/timeline/ct;)Lctl;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/model/timeline/ct;->m:Lctl;

    return-object v0
.end method


# virtual methods
.method public a(Lctl;)Lcom/twitter/model/timeline/ct;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/twitter/model/timeline/ct;->m:Lctl;

    .line 56
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/timeline/ct;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/ay;",
            ">;)",
            "Lcom/twitter/model/timeline/ct;"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/twitter/model/timeline/ct;->a:Ljava/util/List;

    .line 50
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/twitter/model/timeline/az;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/ct;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/twitter/model/timeline/ct;->e()Lcom/twitter/model/timeline/cr;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/timeline/cr;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/twitter/model/timeline/cr;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/model/timeline/cr;-><init>(Lcom/twitter/model/timeline/ct;ILcom/twitter/model/timeline/cs;)V

    return-object v0
.end method
