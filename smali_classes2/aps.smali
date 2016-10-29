.class public Laps;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/model/json/people/JsonPeopleDiscoveryResponse;)Lcom/twitter/model/people/ag;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/twitter/model/people/ag;

    iget-object v1, p0, Lcom/twitter/model/json/people/JsonPeopleDiscoveryResponse;->a:Ljava/util/List;

    invoke-static {v1}, Laps;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/model/json/people/JsonPeopleDiscoveryResponse;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/model/people/ag;-><init>(Ljava/util/List;J)V

    return-object v0
.end method

.method public static a(Lcom/twitter/model/json/people/JsonModule;)Lcom/twitter/model/people/g;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Lcom/twitter/model/people/r;

    invoke-direct {v0}, Lcom/twitter/model/people/r;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/people/JsonModule;->b:Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/r;->b(Ljava/lang/String;)Lcom/twitter/model/people/r;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/people/JsonModule;->a:Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/r;->a(Ljava/lang/String;)Lcom/twitter/model/people/r;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/people/JsonModule;->c:Lcom/twitter/model/json/people/JsonModuleLayout;

    .line 215
    invoke-static {v1}, Laps;->a(Lcom/twitter/model/json/people/JsonModuleLayout;)Lcom/twitter/model/people/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/r;->a(Lcom/twitter/model/people/t;)Lcom/twitter/model/people/r;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/twitter/model/people/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/g;

    .line 212
    return-object v0
.end method

.method public static a(Lcom/twitter/model/people/g;Ljava/util/Map;Ljava/util/Map;)Lcom/twitter/model/people/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/people/g;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;)",
            "Lcom/twitter/model/people/g;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/twitter/model/people/r;

    invoke-direct {v0}, Lcom/twitter/model/people/r;-><init>()V

    .line 69
    invoke-interface {p0}, Lcom/twitter/model/people/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/r;->b(Ljava/lang/String;)Lcom/twitter/model/people/r;

    move-result-object v0

    .line 70
    invoke-interface {p0}, Lcom/twitter/model/people/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/r;->a(Ljava/lang/String;)Lcom/twitter/model/people/r;

    move-result-object v0

    .line 71
    invoke-interface {p0}, Lcom/twitter/model/people/g;->c()Lcom/twitter/model/people/t;

    move-result-object v1

    invoke-static {v1, p1, p2}, Laps;->a(Lcom/twitter/model/people/t;Ljava/util/Map;Ljava/util/Map;)Lcom/twitter/model/people/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/r;->a(Lcom/twitter/model/people/t;)Lcom/twitter/model/people/r;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/twitter/model/people/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/g;

    .line 68
    return-object v0
.end method

.method private static a(Lcom/twitter/model/people/h;Ljava/util/Map;)Lcom/twitter/model/people/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/people/h;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Lcom/twitter/model/people/h;"
        }
    .end annotation

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/model/people/h;

    iget-object v1, p0, Lcom/twitter/model/people/h;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lapw;

    invoke-direct {v2, p1}, Lapw;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v2}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lczz;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/model/people/h;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/people/l;Ljava/util/Map;)Lcom/twitter/model/people/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/people/l;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Lcom/twitter/model/people/l;"
        }
    .end annotation

    .prologue
    .line 146
    if-nez p0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/model/people/n;

    invoke-direct {v0}, Lcom/twitter/model/people/n;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/people/l;->c:Lcom/twitter/model/people/ModuleTitle;

    .line 150
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/n;->a(Lcom/twitter/model/people/ModuleTitle;)Lcom/twitter/model/people/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/people/l;->d:Lcom/twitter/model/people/ModuleTitle;

    .line 151
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/n;->b(Lcom/twitter/model/people/ModuleTitle;)Lcom/twitter/model/people/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/people/l;->e:Lcom/twitter/model/people/aj;

    .line 152
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/n;->a(Lcom/twitter/model/people/aj;)Lcom/twitter/model/people/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/people/l;->f:Lcom/twitter/model/people/h;

    .line 153
    invoke-static {v1, p1}, Laps;->a(Lcom/twitter/model/people/h;Ljava/util/Map;)Lcom/twitter/model/people/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/n;->a(Lcom/twitter/model/people/h;)Lcom/twitter/model/people/n;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/twitter/model/people/n;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/l;

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/json/people/JsonModuleLayout;)Lcom/twitter/model/people/t;
    .locals 3

    .prologue
    .line 221
    new-instance v0, Lcom/twitter/model/people/t;

    iget-object v1, p0, Lcom/twitter/model/json/people/JsonModuleLayout;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/model/json/people/JsonModuleLayout;->b:Lcom/twitter/model/json/people/JsonModuleLayoutContent;

    invoke-static {v2}, Laps;->a(Lcom/twitter/model/json/people/JsonModuleLayoutContent;)Lcom/twitter/model/people/w;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/model/people/t;-><init>(Ljava/lang/String;Lcom/twitter/model/people/w;)V

    return-object v0
.end method

.method public static a(Lcom/twitter/model/people/t;Ljava/util/Map;Ljava/util/Map;)Lcom/twitter/model/people/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/people/t;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;)",
            "Lcom/twitter/model/people/t;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/model/people/t;->c:Lcom/twitter/model/people/w;

    .line 80
    invoke-static {v0, p1, p2}, Laps;->a(Lcom/twitter/model/people/w;Ljava/util/Map;Ljava/util/Map;)Lcom/twitter/model/people/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/people/y;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/w;

    .line 81
    new-instance v1, Lcom/twitter/model/people/t;

    iget-object v2, p0, Lcom/twitter/model/people/t;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/twitter/model/people/t;-><init>(Ljava/lang/String;Lcom/twitter/model/people/w;)V

    return-object v1
.end method

.method public static a(Lcom/twitter/model/json/people/JsonModuleLayoutContent;)Lcom/twitter/model/people/w;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Lcom/twitter/model/people/y;

    invoke-direct {v0}, Lcom/twitter/model/people/y;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/people/JsonModuleLayoutContent;->a:Ljava/util/List;

    .line 227
    invoke-static {v1}, Laps;->a(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/y;->d(Ljava/lang/Iterable;)Lcom/twitter/model/people/y;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/people/JsonModuleLayoutContent;->b:Lcom/twitter/model/people/l;

    .line 228
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/y;->a(Lcom/twitter/model/people/l;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    iget-object v1, p0, Lcom/twitter/model/json/people/JsonModuleLayoutContent;->c:Ljava/lang/String;

    .line 229
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->a(Ljava/lang/String;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    iget-object v1, p0, Lcom/twitter/model/json/people/JsonModuleLayoutContent;->d:Lcom/twitter/model/people/aj;

    .line 230
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->a(Lcom/twitter/model/people/aj;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    iget-object v1, p0, Lcom/twitter/model/json/people/JsonModuleLayoutContent;->e:Ljava/util/List;

    .line 231
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->a(Ljava/lang/Iterable;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    iget-object v1, p0, Lcom/twitter/model/json/people/JsonModuleLayoutContent;->f:Ljava/util/List;

    .line 232
    invoke-static {v1}, Laps;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->b(Ljava/lang/Iterable;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    .line 233
    invoke-virtual {v0}, Lcom/twitter/model/people/ab;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/w;

    .line 226
    return-object v0
.end method

.method public static a(Lcom/twitter/model/people/aa;Ljava/util/Map;Ljava/util/Map;)Lcom/twitter/model/people/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/people/aa;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;)",
            "Lcom/twitter/model/people/y;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/twitter/model/people/y;

    invoke-direct {v0}, Lcom/twitter/model/people/y;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/people/aa;->a:Lcom/twitter/model/people/l;

    .line 105
    invoke-static {v1, p1}, Laps;->a(Lcom/twitter/model/people/l;Ljava/util/Map;)Lcom/twitter/model/people/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/y;->a(Lcom/twitter/model/people/l;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    iget-object v1, p0, Lcom/twitter/model/people/aa;->b:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->a(Ljava/lang/String;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    iget-object v1, p0, Lcom/twitter/model/people/aa;->c:Lcom/twitter/model/people/aj;

    .line 107
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->a(Lcom/twitter/model/people/aj;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    iget-object v1, p0, Lcom/twitter/model/people/aa;->d:Ljava/util/List;

    .line 108
    invoke-static {v1, p1}, Laps;->a(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->a(Ljava/lang/Iterable;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    iget-object v1, p0, Lcom/twitter/model/people/aa;->e:Ljava/util/List;

    .line 109
    invoke-static {v1, p2}, Laps;->b(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->b(Ljava/lang/Iterable;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    iget-object v1, p0, Lcom/twitter/model/people/aa;->f:Ljava/util/List;

    .line 110
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->c(Ljava/lang/Iterable;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/y;

    .line 104
    return-object v0
.end method

.method public static a(Lcom/twitter/model/people/w;Ljava/util/Map;Ljava/util/Map;)Lcom/twitter/model/people/y;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/people/w;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;)",
            "Lcom/twitter/model/people/y;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p0, p1, p2}, Laps;->a(Lcom/twitter/model/people/aa;Ljava/util/Map;Ljava/util/Map;)Lcom/twitter/model/people/y;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/people/w;->h:Ljava/lang/Iterable;

    .line 89
    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    new-instance v2, Lapu;

    invoke-direct {v2, p1, p2}, Lapu;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v1, v2}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/y;->d(Ljava/lang/Iterable;)Lcom/twitter/model/people/y;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method private static a(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/json/people/JsonModulePage;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/people/aa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    if-nez p0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lapz;

    invoke-direct {v0}, Lapz;-><init>()V

    invoke-static {p0, v0}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lczz;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/people/am;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/people/am;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lapv;

    invoke-direct {v0, p1}, Lapv;-><init>(Ljava/util/Map;)V

    invoke-static {p0, v0}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lczz;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/json/people/JsonModule;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/people/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lapy;

    invoke-direct {v0}, Lapy;-><init>()V

    invoke-static {p0, v0}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lczz;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/people/g;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/people/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0, p1}, Laps;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/people/g;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/people/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lapt;

    invoke-direct {v0, p1, p2}, Lapt;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {p0, v0}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lczz;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lapx;

    invoke-direct {v0, p1}, Lapx;-><init>(Ljava/util/Map;)V

    invoke-static {p0, v0}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lczz;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    if-nez p0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Laqa;

    invoke-direct {v0}, Laqa;-><init>()V

    invoke-static {p0, v0}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/people/g;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/people/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Laps;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
