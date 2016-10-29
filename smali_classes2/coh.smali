.class public Lcoh;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcof;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcoc;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcno;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcnh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcoh;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcoh;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcoh;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcoh;->c:Ljava/util/Map;

    return-object v0
.end method

.method private b(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcnt;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcnh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v1

    .line 225
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnt;

    .line 226
    iget-object v0, v0, Lcnt;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnu;

    .line 227
    iget-object v4, v0, Lcnu;->a:Ljava/lang/String;

    .line 228
    new-instance v5, Lcnj;

    invoke-direct {v5}, Lcnj;-><init>()V

    .line 230
    invoke-virtual {v5, v4}, Lcnj;->a(Ljava/lang/String;)Lcnj;

    move-result-object v5

    iget-object v6, v0, Lcnu;->b:Ljava/lang/Object;

    .line 231
    invoke-virtual {v5, v6}, Lcnj;->a(Ljava/lang/Object;)Lcnj;

    move-result-object v5

    iget-object v0, v0, Lcnu;->c:Ljava/util/List;

    .line 232
    invoke-virtual {v5, v0}, Lcnj;->a(Ljava/util/List;)Lcnj;

    move-result-object v0

    .line 233
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcnj;->a(Z)Lcnj;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcnj;->q()Ljava/lang/Object;

    move-result-object v0

    .line 228
    invoke-virtual {v1, v4, v0}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcoh;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcoh;->d:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d(Lcoh;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcoh;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcoh;)Lcoc;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcoh;->a:Lcoc;

    return-object v0
.end method


# virtual methods
.method protected L_()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/twitter/util/object/h;->L_()V

    .line 210
    iget-object v0, p0, Lcoh;->a:Lcoc;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcoc;

    invoke-direct {v0}, Lcoc;-><init>()V

    iput-object v0, p0, Lcoh;->a:Lcoc;

    .line 213
    :cond_0
    return-void
.end method

.method public a(Lcoc;)Lcoh;
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcoh;->a:Lcoc;

    .line 173
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcoh;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcoh;->b:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcoh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcno;",
            ">;)",
            "Lcoh;"
        }
    .end annotation

    .prologue
    .line 184
    iput-object p1, p0, Lcoh;->c:Ljava/util/Map;

    .line 185
    return-object p0
.end method

.method public a(Ljava/util/Map;Ljava/util/Set;)Lcoh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcnt;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcoh;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Lcoh;->b(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcoh;->e:Ljava/util/Map;

    .line 198
    return-object p0
.end method

.method public a(Ljava/util/Set;)Lcoh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcoh;"
        }
    .end annotation

    .prologue
    .line 190
    iput-object p1, p0, Lcoh;->d:Ljava/util/Set;

    .line 191
    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcoh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcnh;",
            ">;)",
            "Lcoh;"
        }
    .end annotation

    .prologue
    .line 203
    iput-object p1, p0, Lcoh;->e:Ljava/util/Map;

    .line 204
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcoh;->e()Lcof;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcof;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcof;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcof;-><init>(Lcoh;Lcog;)V

    return-object v0
.end method
