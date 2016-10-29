.class Lacn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lazt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lazt",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Lcom/twitter/database/model/g;",
            "Lcmf",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lazt;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazt",
            "<",
            "Lcom/twitter/database/model/g;",
            "Lcmf",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lacn;->a:Lazt;

    .line 25
    iput-object p2, p0, Lacn;->b:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lrx/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lrx/o",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lacn;->a:Lazt;

    new-instance v1, Lcom/twitter/database/model/i;

    invoke-direct {v1}, Lcom/twitter/database/model/i;-><init>()V

    iget-object v2, p0, Lacn;->b:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbar;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/database/model/i;->a(Ljava/lang/String;)Lcom/twitter/database/model/i;

    move-result-object v1

    const-string/jumbo v2, "1"

    .line 33
    invoke-virtual {v1, v2}, Lcom/twitter/database/model/i;->d(Ljava/lang/String;)Lcom/twitter/database/model/i;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/twitter/database/model/i;->a()Lcom/twitter/database/model/g;

    move-result-object v1

    .line 31
    invoke-interface {v0, v1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Lrx/o;->b(I)Lrx/o;

    move-result-object v0

    new-instance v1, Laco;

    invoke-direct {v1, p0}, Laco;-><init>(Lacn;)V

    .line 36
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public synthetic a_(Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lacn;->a(Ljava/lang/Long;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lacn;->a:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 47
    return-void
.end method
