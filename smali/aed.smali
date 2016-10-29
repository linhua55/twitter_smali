.class Laed;
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
        "Lcom/twitter/model/moments/maker/af;",
        "Lrx/w",
        "<",
        "Lcom/twitter/model/moments/maker/af;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laec;


# direct methods
.method constructor <init>(Laec;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Laed;->a:Laec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p1, Lcom/twitter/model/moments/maker/af;

    invoke-virtual {p0, p1}, Laed;->a(Lcom/twitter/model/moments/maker/af;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/maker/af;)Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/maker/af;",
            ")",
            "Lrx/w",
            "<",
            "Lcom/twitter/model/moments/maker/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/twitter/model/moments/maker/af;->a()Ljava/util/Map;

    move-result-object v0

    .line 76
    iget-object v1, p0, Laed;->a:Laec;

    invoke-static {v1}, Laec;->a(Laec;)Ladz;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Ladz;->a(Ljava/util/Map;)Lrx/w;

    move-result-object v0

    .line 78
    invoke-static {p1}, Ldcn;->a(Ljava/lang/Object;)Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->c(Ldjj;)Lrx/w;

    move-result-object v0

    .line 76
    return-object v0
.end method
