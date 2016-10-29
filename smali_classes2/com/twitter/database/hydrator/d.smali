.class public Lcom/twitter/database/hydrator/d;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/database/hydrator/e;",
            "Lcmx;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/twitter/util/collection/au",
            "<",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/database/hydrator/e;",
            "Lcom/twitter/database/hydrator/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/twitter/util/collection/au",
            "<",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/database/hydrator/d;->a:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/database/hydrator/d;->b:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/database/hydrator/d;->c:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/database/hydrator/d;->d:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Lcmx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<TD;>;)",
            "Lcmx",
            "<-TS;TD;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Lcom/twitter/database/hydrator/HydrationRegistry;->a()V

    .line 60
    sget-object v0, Lcom/twitter/database/hydrator/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/twitter/database/hydrator/d;->b:Ljava/util/Map;

    invoke-static {p0, p1, v0, v1}, Lcom/twitter/database/hydrator/d;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmx;

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<TD;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/database/hydrator/e;",
            "TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/twitter/util/collection/au",
            "<",
            "Ljava/lang/Class;",
            ">;>;)TT;"
        }
    .end annotation

    .prologue
    .line 85
    .line 86
    :goto_0
    if-eqz p0, :cond_1

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/twitter/database/hydrator/d;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 95
    :goto_1
    return-object v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static a(Ljava/lang/Class;Ljava/lang/Class;Lcmx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<TD;>;",
            "Lcmx",
            "<TS;TD;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/twitter/database/hydrator/d;->a:Ljava/util/Map;

    new-instance v1, Lcom/twitter/database/hydrator/e;

    invoke-direct {v1, p0, p1}, Lcom/twitter/database/hydrator/e;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/twitter/database/hydrator/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/au;

    .line 32
    invoke-virtual {v0, p0}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 33
    sget-object v1, Lcom/twitter/database/hydrator/d;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method protected static a(Ljava/lang/Class;Ljava/lang/Class;Lcom/twitter/database/hydrator/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<TD;>;",
            "Lcom/twitter/database/hydrator/a",
            "<TS;TD;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/twitter/database/hydrator/d;->c:Ljava/util/Map;

    new-instance v1, Lcom/twitter/database/hydrator/e;

    invoke-direct {v1, p0, p1}, Lcom/twitter/database/hydrator/e;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/twitter/database/hydrator/d;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/au;

    .line 42
    invoke-virtual {v0, p0}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 43
    sget-object v1, Lcom/twitter/database/hydrator/d;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/twitter/database/hydrator/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<TD;>;)",
            "Lcom/twitter/database/hydrator/a",
            "<-TS;TD;>;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/twitter/database/hydrator/HydrationRegistry;->a()V

    .line 67
    sget-object v0, Lcom/twitter/database/hydrator/d;->c:Ljava/util/Map;

    sget-object v1, Lcom/twitter/database/hydrator/d;->d:Ljava/util/Map;

    invoke-static {p0, p1, v0, v1}, Lcom/twitter/database/hydrator/d;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/hydrator/a;

    return-object v0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<TD;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/database/hydrator/e;",
            "TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/twitter/util/collection/au",
            "<",
            "Ljava/lang/Class;",
            ">;>;)TT;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/twitter/database/hydrator/e;

    invoke-direct {v0, p0, p1}, Lcom/twitter/database/hydrator/e;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 113
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 116
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/au;

    .line 118
    invoke-virtual {v0}, Lcom/twitter/util/collection/au;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    new-instance v1, Lcom/twitter/database/hydrator/e;

    invoke-direct {v1, v0, p1}, Lcom/twitter/database/hydrator/e;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
