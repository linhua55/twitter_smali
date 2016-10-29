.class Lcom/twitter/android/moments/ui/maker/i;
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
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/model/moments/viewmodels/m;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/e;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/e;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/i;->a:Lcom/twitter/android/moments/ui/maker/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/i;->a:Lcom/twitter/android/moments/ui/maker/e;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/e;->b(Lcom/twitter/android/moments/ui/maker/e;)Lcom/twitter/model/moments/viewmodels/m;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/moments/viewmodels/ah;->a(Lcom/twitter/model/moments/viewmodels/m;Ljava/lang/Long;)J

    move-result-wide v2

    .line 138
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/i;->a(Ljava/util/Map$Entry;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
