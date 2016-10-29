.class public Lapg;
.super Lbab;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbab",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/twitter/model/people/ag;",
        "Lape;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/Session;

.field private final c:Lcom/twitter/database/lru/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/people/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/android/people/ba;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/database/lru/am;Lcom/twitter/android/people/ba;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/client/Session;",
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/people/ag;",
            ">;",
            "Lcom/twitter/android/people/ba;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lbab;-><init>()V

    .line 33
    iput-object p1, p0, Lapg;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lapg;->b:Lcom/twitter/library/client/Session;

    .line 35
    iput-object p3, p0, Lapg;->c:Lcom/twitter/database/lru/am;

    .line 36
    iput-object p4, p0, Lapg;->d:Lcom/twitter/android/people/ba;

    .line 37
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map;)Lape;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lape;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lape;

    iget-object v1, p0, Lapg;->a:Landroid/content/Context;

    iget-object v2, p0, Lapg;->b:Lcom/twitter/library/client/Session;

    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iget-object v4, p0, Lapg;->c:Lcom/twitter/database/lru/am;

    iget-object v5, p0, Lapg;->d:Lcom/twitter/android/people/ba;

    invoke-direct/range {v0 .. v5}, Lape;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/util/Map;Lcom/twitter/database/lru/am;Lcom/twitter/android/people/ba;)V

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/twitter/library/service/x;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lapg;->a(Ljava/util/Map;)Lape;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lape;)Lcom/twitter/model/people/ag;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p1, Lape;->a:Lcom/twitter/model/people/ag;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ag;

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twitter/library/service/x;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lape;

    invoke-virtual {p0, p1}, Lapg;->a(Lape;)Lcom/twitter/model/people/ag;

    move-result-object v0

    return-object v0
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
