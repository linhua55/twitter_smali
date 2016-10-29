.class Labo;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcom/twitter/model/livevideo/d;",
        "Lbpu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Labl;


# direct methods
.method constructor <init>(Labl;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Labo;->a:Labl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/livevideo/d;)Lbpu;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/twitter/library/api/ah;

    invoke-direct {v0}, Lcom/twitter/library/api/ah;-><init>()V

    invoke-virtual {v0, p1}, Lcom/twitter/library/api/ah;->a(Lcom/twitter/model/livevideo/d;)Lcom/twitter/library/api/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/api/ah;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/ag;

    .line 89
    new-instance v1, Lbpu;

    invoke-direct {v1, v0}, Lbpu;-><init>(Lcom/twitter/library/api/ag;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    check-cast p1, Lcom/twitter/model/livevideo/d;

    invoke-virtual {p0, p1}, Labo;->a(Lcom/twitter/model/livevideo/d;)Lbpu;

    move-result-object v0

    return-object v0
.end method
