.class Lwa;
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
        "Lcom/twitter/util/collection/ac",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/model/av/o;",
        ">;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lvz;


# direct methods
.method constructor <init>(Lvz;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lwa;->a:Lvz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ac;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/av/o;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 91
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    check-cast p1, Lcom/twitter/util/collection/ac;

    invoke-virtual {p0, p1}, Lwa;->a(Lcom/twitter/util/collection/ac;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
