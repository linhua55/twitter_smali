.class public Lcom/twitter/model/timeline/ag;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/timeline/ae;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/model/timeline/ag;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/twitter/model/timeline/ag;->a:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/timeline/ag;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/twitter/model/timeline/ag;->b:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/twitter/model/timeline/ag;->e()Lcom/twitter/model/timeline/ae;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/timeline/ae;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/twitter/model/timeline/ae;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/timeline/ae;-><init>(Lcom/twitter/model/timeline/ag;Lcom/twitter/model/timeline/af;)V

    return-object v0
.end method
