.class Lcom/twitter/android/initialization/u;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/initialization/t;


# direct methods
.method constructor <init>(Lcom/twitter/android/initialization/t;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/twitter/android/initialization/u;->a:Lcom/twitter/android/initialization/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 52
    invoke-static {}, Layj;->b()Layj;

    move-result-object v2

    .line 53
    sget-object v3, Laxz;->m:Laye;

    .line 54
    iget-object v0, p0, Lcom/twitter/android/initialization/u;->a:Lcom/twitter/android/initialization/t;

    invoke-static {v0}, Lcom/twitter/android/initialization/t;->a(Lcom/twitter/android/initialization/t;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 55
    new-instance v5, Laxz;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v1, v3, v6, v7}, Laxz;-><init>(Ljava/lang/String;Laye;J)V

    invoke-virtual {v2, v5}, Layj;->a(Laxz;)V

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method
