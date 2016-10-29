.class public final Lcom/twitter/model/timeline/di;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/timeline/dh;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/twitter/model/timeline/al;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterSocialProof;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/timeline/al;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/model/timeline/di;->a:I

    .line 107
    return-void
.end method


# virtual methods
.method public a(I)Lcom/twitter/model/timeline/di;
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcom/twitter/model/timeline/di;->a:I

    .line 120
    return-object p0
.end method

.method public a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/timeline/di;
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/twitter/model/timeline/di;->d:Lcom/twitter/model/timeline/al;

    .line 138
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/timeline/di;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/twitter/model/timeline/di;->b:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public a(Ljava/util/List;Ljava/util/List;)Lcom/twitter/model/timeline/di;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/twitter/model/timeline/di;"
        }
    .end annotation

    .prologue
    .line 155
    iput-object p1, p0, Lcom/twitter/model/timeline/di;->g:Ljava/util/List;

    .line 156
    iput-object p2, p0, Lcom/twitter/model/timeline/di;->h:Ljava/util/List;

    .line 157
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/twitter/model/timeline/di;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterSocialProof;",
            ">;)",
            "Lcom/twitter/model/timeline/di;"
        }
    .end annotation

    .prologue
    .line 143
    iput-object p1, p0, Lcom/twitter/model/timeline/di;->e:Ljava/util/Map;

    .line 144
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/timeline/di;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/twitter/model/timeline/di;->c:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/twitter/model/timeline/di;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/timeline/al;",
            ">;)",
            "Lcom/twitter/model/timeline/di;"
        }
    .end annotation

    .prologue
    .line 149
    iput-object p1, p0, Lcom/twitter/model/timeline/di;->f:Ljava/util/Map;

    .line 150
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/twitter/model/timeline/di;->e()Lcom/twitter/model/timeline/dh;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/timeline/dh;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/twitter/model/timeline/dh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/timeline/dh;-><init>(Lcom/twitter/model/timeline/di;Lcom/twitter/model/timeline/dg;)V

    return-object v0
.end method
