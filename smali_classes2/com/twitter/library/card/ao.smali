.class public Lcom/twitter/library/card/ao;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/library/card/ao;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/widget/renderablecontent/DisplayMode;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/card/ap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/card/ao;->b:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public static a()Lcom/twitter/library/card/ao;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/twitter/library/card/ao;->a:Lcom/twitter/library/card/ao;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/twitter/library/card/ao;

    invoke-direct {v0}, Lcom/twitter/library/card/ao;-><init>()V

    sput-object v0, Lcom/twitter/library/card/ao;->a:Lcom/twitter/library/card/ao;

    .line 49
    :cond_0
    sget-object v0, Lcom/twitter/library/card/ao;->a:Lcom/twitter/library/card/ao;

    return-object v0
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 106
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/twitter/util/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing card name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    new-instance v1, Lcom/twitter/library/card/ap;

    invoke-direct {v1, p3, p4}, Lcom/twitter/library/card/ap;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    invoke-static {p1, p2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v0

    .line 116
    iget-object v2, p0, Lcom/twitter/library/card/ao;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/twitter/library/card/ao;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/twitter/library/card/ao;->b:Ljava/util/Map;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/twitter/library/card/ap;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/twitter/util/collection/CollectionUtils;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/twitter/library/card/ao;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 59
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 63
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/card/ap;

    move-object v3, v1

    move v4, v2

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 66
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/card/ap;

    .line 68
    iget-object v5, v1, Lcom/twitter/library/card/ap;->a:Ljava/lang/String;

    .line 69
    invoke-static {v5}, Lcom/twitter/config/c;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    if-nez v4, :cond_1

    .line 71
    const/4 v4, 0x1

    move-object v3, v1

    .line 65
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 77
    :cond_1
    new-instance v5, Lbiv;

    invoke-direct {v5}, Lbiv;-><init>()V

    const-string/jumbo v6, "card name"

    .line 78
    invoke-virtual {v5, v6, p1}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v5

    const-string/jumbo v6, "display mode"

    .line 79
    invoke-virtual {v5, v6, p2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v5

    const-string/jumbo v6, "experiments"

    .line 80
    invoke-virtual {v5, v6, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v5

    const-string/jumbo v6, "chosen experiment key"

    iget-object v7, v3, Lcom/twitter/library/card/ap;->a:Ljava/lang/String;

    .line 81
    invoke-virtual {v5, v6, v7}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v5

    const-string/jumbo v6, "conflicting experiment key"

    iget-object v1, v1, Lcom/twitter/library/card/ap;->a:Ljava/lang/String;

    .line 82
    invoke-virtual {v5, v6, v1}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v1

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Multiple assigned experiments trying to register. Use same experiment group to ensure mutual exclusivity."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v5}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lbix;->a(Lbiv;)V

    goto :goto_1

    .line 91
    :cond_2
    iget-object v0, v3, Lcom/twitter/library/card/ap;->a:Ljava/lang/String;

    .line 92
    iget-object v1, v3, Lcom/twitter/library/card/ap;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .line 94
    :cond_3
    return v2
.end method
