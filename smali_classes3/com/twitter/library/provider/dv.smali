.class Lcom/twitter/library/provider/dv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lczn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lczn",
        "<",
        "Lcks;",
        "Lcle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/provider/dm;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/dm;)V
    .locals 0

    .prologue
    .line 11583
    iput-object p1, p0, Lcom/twitter/library/provider/dv;->a:Lcom/twitter/library/provider/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcks;)Lcle;
    .locals 1

    .prologue
    .line 11587
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcle;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11583
    check-cast p1, Lcks;

    invoke-virtual {p0, p1}, Lcom/twitter/library/provider/dv;->a(Lcks;)Lcle;

    move-result-object v0

    return-object v0
.end method
