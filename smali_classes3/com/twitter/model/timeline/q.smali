.class public final Lcom/twitter/model/timeline/q;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/timeline/o;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/twitter/model/timeline/al;

.field c:Ljava/util/List;
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
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/timeline/q;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/twitter/model/timeline/q;->b:Lcom/twitter/model/timeline/al;

    .line 73
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/timeline/q;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/twitter/model/timeline/q;->a:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/timeline/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/twitter/model/timeline/q;"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/twitter/model/timeline/q;->c:Ljava/util/List;

    .line 79
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/twitter/model/timeline/q;->e()Lcom/twitter/model/timeline/o;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/timeline/o;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/twitter/model/timeline/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/timeline/o;-><init>(Lcom/twitter/model/timeline/q;Lcom/twitter/model/timeline/p;)V

    return-object v0
.end method
