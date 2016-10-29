.class public final Lcqs;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcqq;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/model/moments/ad;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqt;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcqt;

.field e:Lcom/twitter/model/moments/DisplayStyle;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/String;

.field h:Lcom/twitter/model/moments/ap;

.field i:I

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqg;",
            ">;"
        }
    .end annotation
.end field

.field k:Lcqc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 66
    sget-object v0, Lcom/twitter/model/moments/DisplayStyle;->a:Lcom/twitter/model/moments/DisplayStyle;

    iput-object v0, p0, Lcqs;->e:Lcom/twitter/model/moments/DisplayStyle;

    .line 71
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcqs;->j:Ljava/util/List;

    return-void
.end method

.method private static b(Lcqt;)Z
    .locals 2

    .prologue
    .line 152
    if-eqz p0, :cond_0

    invoke-static {}, Lcqq;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcqt;->c:Lcom/twitter/model/moments/MomentPageType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected L_()V
    .locals 5

    .prologue
    .line 159
    iget-object v0, p0, Lcqs;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 160
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v1

    .line 161
    iget-object v0, p0, Lcqs;->a:Lcom/twitter/model/moments/ad;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    iget-wide v2, v0, Lcom/twitter/model/moments/ad;->b:J

    .line 162
    iget-object v0, p0, Lcqs;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqt;

    .line 163
    invoke-static {v2, v3, v0}, Lcqg;->c(JLcqt;)Lcqg;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcqs;->d:Lcqt;

    if-eqz v0, :cond_1

    .line 168
    const/4 v0, 0x0

    iget-object v4, p0, Lcqs;->d:Lcqt;

    invoke-static {v2, v3, v4}, Lcqg;->a(JLcqt;)Lcqg;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 169
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, p0, Lcqs;->d:Lcqt;

    .line 170
    invoke-static {v2, v3, v4}, Lcqg;->b(JLcqt;)Lcqg;

    move-result-object v2

    .line 169
    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 172
    :cond_1
    iput-object v1, p0, Lcqs;->j:Ljava/util/List;

    .line 174
    :cond_2
    return-void
.end method

.method public a(I)Lcqs;
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcqs;->i:I

    .line 95
    return-object p0
.end method

.method public a(Lcom/twitter/model/moments/DisplayStyle;)Lcqs;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcqs;->e:Lcom/twitter/model/moments/DisplayStyle;

    .line 109
    return-object p0
.end method

.method public a(Lcom/twitter/model/moments/ad;)Lcqs;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcqs;->a:Lcom/twitter/model/moments/ad;

    .line 77
    return-object p0
.end method

.method public a(Lcom/twitter/model/moments/ap;)Lcqs;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcqs;->h:Lcom/twitter/model/moments/ap;

    .line 127
    return-object p0
.end method

.method public a(Lcqc;)Lcqs;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcqs;->k:Lcqc;

    .line 133
    return-object p0
.end method

.method public a(Lcqt;)Lcqs;
    .locals 1

    .prologue
    .line 100
    invoke-static {p1}, Lcqs;->b(Lcqt;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iput-object p1, p0, Lcqs;->d:Lcqt;

    .line 103
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcqs;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcqs;->g:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcqs;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcqt;",
            ">;)",
            "Lcqs;"
        }
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Lcqs;->c:Ljava/util/List;

    .line 89
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcqs;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/cs;",
            ">;)",
            "Lcqs;"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcqs;->b:Ljava/util/Map;

    .line 83
    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcqs;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Lcqs;"
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lcqs;->f:Ljava/util/Map;

    .line 115
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcqs;->a:Lcom/twitter/model/moments/ad;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcqs;->e()Lcqq;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcqq;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcqq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcqq;-><init>(Lcqs;Lcqr;)V

    return-object v0
.end method
