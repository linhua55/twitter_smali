.class final Lcom/twitter/android/moments/ui/fullscreen/ex;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        "Lcom/twitter/library/view/m;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/view/m;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/twitter/library/view/m;->r:Lcom/twitter/library/view/m;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ex;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/view/m;

    move-result-object v0

    return-object v0
.end method
