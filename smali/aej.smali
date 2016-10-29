.class Laej;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjk",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Lcqx;",
        ">;",
        "Lcqt;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Lcqx;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laei;


# direct methods
.method constructor <init>(Laei;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Laej;->a:Laei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    check-cast p1, Ljava/util/Map;

    check-cast p2, Lcqt;

    invoke-virtual {p0, p1, p2}, Laej;->a(Ljava/util/Map;Lcqt;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;Lcqt;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcqx;",
            ">;",
            "Lcqt;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcqx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-wide v0, p2, Lcqt;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcqt;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lcqx;->a([Lcqt;)Lcqx;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-object p1
.end method
