.class Laee;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lcom/twitter/model/moments/maker/af;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laec;


# direct methods
.method constructor <init>(Laec;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Laee;->a:Laec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/maker/af;)V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Laee;->a:Laec;

    invoke-static {v0}, Laec;->c(Laec;)Lcet;

    move-result-object v0

    iget-object v1, p0, Laee;->a:Laec;

    invoke-static {v1}, Laec;->b(Laec;)J

    move-result-wide v2

    iget-object v1, p1, Lcom/twitter/model/moments/maker/af;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcet;->a(JLjava/util/Collection;)V

    .line 90
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    check-cast p1, Lcom/twitter/model/moments/maker/af;

    invoke-virtual {p0, p1}, Laee;->a(Lcom/twitter/model/moments/maker/af;)V

    return-void
.end method
