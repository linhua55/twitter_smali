.class Lcom/twitter/library/network/w;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/platform/s;


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/twitter/config/f;

.field private final c:Lcom/twitter/library/network/y;

.field private final d:Lcom/twitter/library/network/z;

.field private volatile e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/util/network/d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/util/network/d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/util/network/d;",
            "Lcom/twitter/util/network/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/twitter/library/network/w;->a:Ljava/util/Set;

    .line 43
    sget-object v0, Lcom/twitter/library/network/w;->a:Ljava/util/Set;

    const-string/jumbo v1, "/1.1/help/settings.json"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/twitter/library/network/y;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/twitter/library/network/x;

    invoke-direct {v0, p0}, Lcom/twitter/library/network/x;-><init>(Lcom/twitter/library/network/w;)V

    iput-object v0, p0, Lcom/twitter/library/network/w;->b:Lcom/twitter/config/f;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/network/w;->e:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/network/w;->f:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/network/w;->g:Ljava/util/Map;

    .line 71
    iput-object p1, p0, Lcom/twitter/library/network/w;->c:Lcom/twitter/library/network/y;

    .line 72
    invoke-static {}, Lcom/twitter/library/network/z;->a()Lcom/twitter/library/network/z;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/w;->d:Lcom/twitter/library/network/z;

    .line 73
    invoke-direct {p0}, Lcom/twitter/library/network/w;->b()V

    .line 74
    invoke-direct {p0}, Lcom/twitter/library/network/w;->c()V

    .line 75
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/util/network/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v2

    .line 171
    invoke-static {p0}, Lcom/twitter/config/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-static {v1}, Lcom/twitter/library/network/w;->c(Ljava/net/URI;)Lcom/twitter/util/network/d;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 179
    new-instance v4, Lbiv;

    invoke-direct {v4, v1}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    const-string/jumbo v1, "message"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failure in parsing origin set  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " for feature switch "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    invoke-static {v0}, Lbix;->a(Lbiv;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v2}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/library/network/w;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/twitter/library/network/w;->b()V

    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    .line 124
    const-string/jumbo v0, "spdy_origins"

    invoke-static {v0}, Lcom/twitter/library/network/w;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/w;->e:Ljava/util/Set;

    .line 125
    const-string/jumbo v0, "network_layer_no_proto_negotiation"

    invoke-static {v0}, Lcom/twitter/library/network/w;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/w;->f:Ljava/util/Set;

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "spdy_aliases_enabled"

    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/library/network/w;->d:Lcom/twitter/library/network/z;

    .line 130
    invoke-virtual {v1}, Lcom/twitter/library/network/z;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    :cond_0
    const-string/jumbo v0, "spdy_origin_aliases"

    invoke-static {v0}, Lcom/twitter/config/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    const-string/jumbo v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 138
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 140
    :try_start_0
    new-instance v4, Ljava/net/URI;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 141
    new-instance v5, Ljava/net/URI;

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-direct {v5, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v2, Lcom/twitter/util/network/d;

    .line 143
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-direct {v2, v6, v7, v4}, Lcom/twitter/util/network/d;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v4, Lcom/twitter/util/network/d;

    .line 145
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 146
    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-direct {v4, v6, v7, v5}, Lcom/twitter/util/network/d;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v2

    .line 148
    new-instance v4, Lbiv;

    invoke-direct {v4, v2}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    const-string/jumbo v2, "message"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failure in parsing SPDY origin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    invoke-static {v0}, Lbix;->a(Lbiv;)V

    goto :goto_0

    .line 152
    :cond_1
    new-instance v2, Lbiv;

    invoke-direct {v2}, Lbiv;-><init>()V

    const-string/jumbo v4, "message"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failure in parsing SPDY origins "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    invoke-static {v0}, Lbix;->a(Lbiv;)V

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 159
    :cond_3
    monitor-enter p0

    .line 160
    :try_start_1
    iget-object v1, p0, Lcom/twitter/library/network/w;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 161
    iput-object v0, p0, Lcom/twitter/library/network/w;->g:Ljava/util/Map;

    .line 162
    iget-object v0, p0, Lcom/twitter/library/network/w;->c:Lcom/twitter/library/network/y;

    iget-object v1, p0, Lcom/twitter/library/network/w;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/twitter/library/network/y;->a(Ljava/util/Map;)V

    .line 164
    :cond_4
    monitor-exit p0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static c(Ljava/net/URI;)Lcom/twitter/util/network/d;
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 116
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    const-string/jumbo v0, "https"

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    .line 120
    :cond_0
    :goto_0
    new-instance v1, Lcom/twitter/util/network/d;

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/twitter/util/network/d;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1

    .line 117
    :cond_1
    const/16 v0, 0x50

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->b()Lcom/twitter/platform/r;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/twitter/platform/r;->a(Lcom/twitter/platform/s;)V

    .line 189
    iget-object v0, p0, Lcom/twitter/library/network/w;->b:Lcom/twitter/config/f;

    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 190
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->b()Lcom/twitter/platform/r;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/twitter/platform/r;->b(Lcom/twitter/platform/s;)V

    .line 194
    iget-object v0, p0, Lcom/twitter/library/network/w;->b:Lcom/twitter/config/f;

    invoke-static {v0}, Lcom/twitter/config/d;->b(Lcom/twitter/config/f;)V

    .line 195
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/twitter/library/network/w;->d()V

    .line 90
    return-void
.end method

.method public a(Lcom/twitter/platform/r;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/library/network/w;->d:Lcom/twitter/library/network/z;

    invoke-virtual {v0, p2}, Lcom/twitter/library/network/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/twitter/library/network/w;->b()V

    .line 82
    :cond_0
    return-void
.end method

.method public a(Ljava/net/URI;)Z
    .locals 2

    .prologue
    .line 97
    invoke-static {p1}, Lcom/twitter/library/network/w;->c(Ljava/net/URI;)Lcom/twitter/util/network/d;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/twitter/library/network/w;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/library/network/w;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/twitter/library/network/w;->a:Ljava/util/Set;

    .line 99
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/net/URI;)Z
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/twitter/library/network/w;->a:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/network/w;->f:Ljava/util/Set;

    .line 111
    invoke-static {p1}, Lcom/twitter/library/network/w;->c(Ljava/net/URI;)Lcom/twitter/util/network/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
