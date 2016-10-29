.class Luc;
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
        "Lcmf",
        "<",
        "Lcom/twitter/model/av/ac;",
        ">;",
        "Lui;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lub;


# direct methods
.method constructor <init>(Lub;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Luc;->a:Lub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcmf;

    invoke-virtual {p0, p1}, Luc;->a(Lcmf;)Lui;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcmf;)Lui;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/ac;",
            ">;)",
            "Lui;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Luc;->a:Lub;

    invoke-static {v0}, Lub;->a(Lub;)Ltz;

    move-result-object v0

    iget-object v1, p0, Luc;->a:Lub;

    invoke-static {v1}, Lub;->b(Lub;)Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lui;->a(Ltz;Lcom/twitter/library/av/playback/AVDataSource;Lcmf;)Lui;

    move-result-object v0

    return-object v0
.end method
