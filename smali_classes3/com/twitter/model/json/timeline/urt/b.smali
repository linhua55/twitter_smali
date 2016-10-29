.class Lcom/twitter/model/json/timeline/urt/b;
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
        "Lcom/twitter/model/core/ct;",
        "Lcom/twitter/model/core/cs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/model/json/timeline/urt/JsonGlobalObjects;


# direct methods
.method constructor <init>(Lcom/twitter/model/json/timeline/urt/JsonGlobalObjects;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/twitter/model/json/timeline/urt/b;->a:Lcom/twitter/model/json/timeline/urt/JsonGlobalObjects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/twitter/model/core/ct;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/b;->a:Lcom/twitter/model/json/timeline/urt/JsonGlobalObjects;

    iget-object v0, v0, Lcom/twitter/model/json/timeline/urt/JsonGlobalObjects;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/twitter/model/core/ct;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {p1, v0}, Lcom/twitter/model/core/ct;->b(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/core/ct;

    .line 59
    return-void
.end method

.method private c(Lcom/twitter/model/core/ct;)V
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/twitter/model/core/ct;->h()J

    move-result-wide v0

    .line 63
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/twitter/model/json/timeline/urt/b;->a:Lcom/twitter/model/json/timeline/urt/JsonGlobalObjects;

    iget-object v2, v2, Lcom/twitter/model/json/timeline/urt/JsonGlobalObjects;->a:Ljava/util/Map;

    .line 65
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/ct;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, v0}, Lcom/twitter/model/json/timeline/urt/b;->b(Lcom/twitter/model/core/ct;)V

    .line 68
    invoke-virtual {v0}, Lcom/twitter/model/core/ct;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    invoke-virtual {p1, v0}, Lcom/twitter/model/core/ct;->b(Lcom/twitter/model/core/cs;)Lcom/twitter/model/core/ct;

    .line 71
    :cond_0
    return-void
.end method

.method private d(Lcom/twitter/model/core/ct;)V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/twitter/model/core/ct;->f()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/twitter/model/json/timeline/urt/b;->a:Lcom/twitter/model/json/timeline/urt/JsonGlobalObjects;

    iget-object v1, v1, Lcom/twitter/model/json/timeline/urt/JsonGlobalObjects;->a:Ljava/util/Map;

    .line 77
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/ct;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0, v0}, Lcom/twitter/model/json/timeline/urt/b;->b(Lcom/twitter/model/core/ct;)V

    .line 80
    invoke-virtual {v0}, Lcom/twitter/model/core/ct;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    invoke-virtual {p1, v0}, Lcom/twitter/model/core/ct;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/model/core/ct;

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/ct;)Lcom/twitter/model/core/cs;
    .locals 1

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/twitter/model/json/timeline/urt/b;->c(Lcom/twitter/model/core/ct;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/twitter/model/json/timeline/urt/b;->d(Lcom/twitter/model/core/ct;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/twitter/model/json/timeline/urt/b;->b(Lcom/twitter/model/core/ct;)V

    .line 52
    invoke-virtual {p1}, Lcom/twitter/model/core/ct;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lcom/twitter/model/core/ct;

    invoke-virtual {p0, p1}, Lcom/twitter/model/json/timeline/urt/b;->a(Lcom/twitter/model/core/ct;)Lcom/twitter/model/core/cs;

    move-result-object v0

    return-object v0
.end method
