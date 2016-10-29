.class public final Lcom/twitter/library/api/ah;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/api/ag;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/ay;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcsz;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/twitter/model/timeline/ai;

.field d:Lclh;

.field e:Lcom/twitter/model/timeline/br;

.field f:Lcom/twitter/model/livevideo/d;

.field g:Z

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 54
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/ah;->a:Ljava/util/List;

    .line 56
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/ah;->b:Ljava/util/List;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/library/api/ah;->h:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/twitter/library/api/ah;
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/twitter/library/api/ah;->h:I

    .line 117
    return-object p0
.end method

.method public a(Lclh;)Lcom/twitter/library/api/ah;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/twitter/library/api/ah;->d:Lclh;

    .line 89
    return-object p0
.end method

.method public a(Lcom/twitter/model/livevideo/d;)Lcom/twitter/library/api/ah;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/twitter/library/api/ah;->f:Lcom/twitter/model/livevideo/d;

    .line 101
    return-object p0
.end method

.method public a(Lcom/twitter/model/timeline/ai;)Lcom/twitter/library/api/ah;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/twitter/library/api/ah;->c:Lcom/twitter/model/timeline/ai;

    .line 83
    return-object p0
.end method

.method public a(Lcom/twitter/model/timeline/br;)Lcom/twitter/library/api/ah;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/twitter/library/api/ah;->e:Lcom/twitter/model/timeline/br;

    .line 95
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/library/api/ah;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/ay;",
            ">;)",
            "Lcom/twitter/library/api/ah;"
        }
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/twitter/library/api/ah;->a:Ljava/util/List;

    .line 71
    return-object p0
.end method

.method public a(Z)Lcom/twitter/library/api/ah;
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/twitter/library/api/ah;->g:Z

    .line 107
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/twitter/library/api/ah;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcsz;",
            ">;)",
            "Lcom/twitter/library/api/ah;"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/twitter/library/api/ah;->b:Ljava/util/List;

    .line 77
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/library/api/ah;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/api/ah;->b:Ljava/util/List;

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
    .line 52
    invoke-virtual {p0}, Lcom/twitter/library/api/ah;->e()Lcom/twitter/library/api/ag;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/library/api/ag;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/twitter/library/api/ag;

    invoke-direct {v0, p0}, Lcom/twitter/library/api/ag;-><init>(Lcom/twitter/library/api/ah;)V

    return-object v0
.end method
