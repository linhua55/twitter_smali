.class public final Lcom/twitter/model/av/ad;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/av/ac;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/av/ae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/av/ad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/model/av/ad;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/model/av/ad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/model/av/ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/model/av/ad;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/model/av/ad;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/model/av/ad;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/model/av/ad;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/model/av/ad;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/twitter/model/av/ad;->a:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/av/ad;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;)",
            "Lcom/twitter/model/av/ad;"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/twitter/model/av/ad;->c:Ljava/util/List;

    .line 77
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/twitter/model/av/ad;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/av/ae;",
            ">;)",
            "Lcom/twitter/model/av/ad;"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/twitter/model/av/ad;->d:Ljava/util/Map;

    .line 83
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/av/ad;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/twitter/model/av/ad;->b:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/twitter/model/av/ad;->e()Lcom/twitter/model/av/ac;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/av/ac;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/twitter/model/av/ac;

    invoke-direct {v0, p0}, Lcom/twitter/model/av/ac;-><init>(Lcom/twitter/model/av/ad;)V

    return-object v0
.end method
