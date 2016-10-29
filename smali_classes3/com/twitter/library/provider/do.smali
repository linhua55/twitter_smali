.class Lcom/twitter/library/provider/do;
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
        "Lckx",
        "<",
        "Lcom/twitter/model/core/cs;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/provider/dm;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/dm;)V
    .locals 0

    .prologue
    .line 11740
    iput-object p1, p0, Lcom/twitter/library/provider/do;->a:Lcom/twitter/library/provider/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcks;)Lckx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcks;",
            ")",
            "Lckx",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11744
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckx;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11740
    check-cast p1, Lcks;

    invoke-virtual {p0, p1}, Lcom/twitter/library/provider/do;->a(Lcks;)Lckx;

    move-result-object v0

    return-object v0
.end method
