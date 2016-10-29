.class Lsi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lsg;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lsc;

.field final synthetic c:Lsh;


# direct methods
.method constructor <init>(Lsh;Ljava/lang/String;Lsc;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lsi;->c:Lsh;

    iput-object p2, p0, Lsi;->a:Ljava/lang/String;

    iput-object p3, p0, Lsi;->b:Lsc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/api/TwitterLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lsi;->c:Lsh;

    iget-object v1, p0, Lsi;->a:Ljava/lang/String;

    iget-object v2, p0, Lsi;->b:Lsc;

    invoke-virtual {v0, v1, v2}, Lsh;->a(Ljava/lang/String;Lsc;)V

    .line 57
    :cond_0
    return-void
.end method
