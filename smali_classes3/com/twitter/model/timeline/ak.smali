.class public Lcom/twitter/model/timeline/ak;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/timeline/ai;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/model/timeline/ak;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/twitter/model/timeline/ak;->a:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/timeline/ak;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/twitter/model/timeline/ak;->b:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/timeline/ak;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/twitter/model/timeline/ak;->c:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/twitter/model/timeline/ak;->e()Lcom/twitter/model/timeline/ai;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/timeline/ai;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/twitter/model/timeline/ai;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/timeline/ai;-><init>(Lcom/twitter/model/timeline/ak;Lcom/twitter/model/timeline/aj;)V

    return-object v0
.end method
