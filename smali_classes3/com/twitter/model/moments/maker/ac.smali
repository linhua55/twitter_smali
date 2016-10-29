.class abstract Lcom/twitter/model/moments/maker/ac;
.super Lcom/twitter/model/moments/maker/ao;
.source "Twttr"


# instance fields
.field public final b:Lcom/twitter/model/moments/maker/aj;


# direct methods
.method protected constructor <init>(Lcom/twitter/model/moments/maker/ad;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/maker/ao;-><init>(Lcom/twitter/model/moments/maker/ap;)V

    .line 24
    iget-object v0, p1, Lcom/twitter/model/moments/maker/ad;->a:Lcom/twitter/model/moments/maker/aj;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/aj;

    iput-object v0, p0, Lcom/twitter/model/moments/maker/ac;->b:Lcom/twitter/model/moments/maker/aj;

    .line 25
    return-void
.end method
