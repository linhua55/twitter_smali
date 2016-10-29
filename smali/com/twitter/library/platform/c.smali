.class final Lcom/twitter/library/platform/c;
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
        "Lcld;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcks;)Lcld;
    .locals 1

    .prologue
    .line 523
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcle;

    invoke-static {v0}, Lcld;->a(Lcle;)Lcld;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 519
    check-cast p1, Lcks;

    invoke-virtual {p0, p1}, Lcom/twitter/library/platform/c;->a(Lcks;)Lcld;

    move-result-object v0

    return-object v0
.end method
