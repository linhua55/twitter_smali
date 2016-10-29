.class final Lamm;
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
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        "Lamy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lamy;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lamz;

    invoke-direct {v0, p1}, Lamz;-><init>(Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    check-cast p1, Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {p0, p1}, Lamm;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lamy;

    move-result-object v0

    return-object v0
.end method
