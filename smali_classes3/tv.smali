.class public Ltv;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ltu;

.field private b:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/MonetizationCategory;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltu;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Ltv;->a:Ltu;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/MonetizationCategory;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Ltv;->b:Lrx/o;

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Ltv;->a:Ltu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltu;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    invoke-virtual {v0}, Lrx/o;->e()Lrx/o;

    move-result-object v0

    iput-object v0, p0, Ltv;->b:Lrx/o;

    .line 35
    :cond_0
    iget-object v0, p0, Ltv;->b:Lrx/o;

    return-object v0
.end method
