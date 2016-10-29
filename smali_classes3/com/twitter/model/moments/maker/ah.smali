.class Lcom/twitter/model/moments/maker/ah;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Ldkx",
        "<",
        "Ljava/lang/Long;",
        "Lcqt;",
        ">;",
        "Ldkx",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/List",
        "<",
        "Lcqt;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/maker/af;


# direct methods
.method constructor <init>(Lcom/twitter/model/moments/maker/af;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/twitter/model/moments/maker/ah;->a:Lcom/twitter/model/moments/maker/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldkx;)Ldkx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldkx",
            "<",
            "Ljava/lang/Long;",
            "Lcqt;",
            ">;)",
            "Ldkx",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcqt;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Ldkx;->q()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ldkx;->p()Lrx/o;

    move-result-object v1

    invoke-static {v0, v1}, Ldkx;->a(Ljava/lang/Object;Lrx/o;)Ldkx;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    check-cast p1, Ldkx;

    invoke-virtual {p0, p1}, Lcom/twitter/model/moments/maker/ah;->a(Ldkx;)Ldkx;

    move-result-object v0

    return-object v0
.end method
