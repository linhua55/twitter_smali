.class public final Lcom/twitter/model/search/n;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/search/m;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/t;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:Lcom/twitter/model/search/d;

.field e:Ljava/lang/String;

.field f:Lcom/twitter/model/core/TwitterSocialProof;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/TwitterSocialProof;)Lcom/twitter/model/search/n;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/twitter/model/search/n;->f:Lcom/twitter/model/core/TwitterSocialProof;

    .line 92
    return-object p0
.end method

.method public a(Lcom/twitter/model/search/d;)Lcom/twitter/model/search/n;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/twitter/model/search/n;->d:Lcom/twitter/model/search/d;

    .line 80
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/search/n;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/twitter/model/search/n;->e:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/search/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/t;",
            ">;)",
            "Lcom/twitter/model/search/n;"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/twitter/model/search/n;->a:Ljava/util/List;

    .line 62
    return-object p0
.end method

.method public a(Z)Lcom/twitter/model/search/n;
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/twitter/model/search/n;->b:Z

    .line 68
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/search/n;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/twitter/model/search/n;->g:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public b(Z)Lcom/twitter/model/search/n;
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/twitter/model/search/n;->c:Z

    .line 74
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/search/n;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/twitter/model/search/n;->h:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/twitter/model/search/n;->e()Lcom/twitter/model/search/m;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/search/m;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/twitter/model/search/m;

    invoke-direct {v0, p0}, Lcom/twitter/model/search/m;-><init>(Lcom/twitter/model/search/n;)V

    return-object v0
.end method
