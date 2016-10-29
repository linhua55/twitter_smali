.class Lrw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lsc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsc",
        "<",
        "Ljava/lang/String;",
        "Lcom/twitter/android/provider/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lsc;

.field final synthetic b:Lsv;

.field final synthetic c:Lru;


# direct methods
.method constructor <init>(Lru;Lsc;Lsv;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lrw;->c:Lru;

    iput-object p2, p0, Lrw;->a:Lsc;

    iput-object p3, p0, Lrw;->b:Lsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcmf;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lrw;->a(Ljava/lang/String;Lcmf;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcmf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcmf",
            "<+",
            "Lcom/twitter/android/provider/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lrw;->a:Lsc;

    iget-object v1, p0, Lrw;->b:Lsv;

    invoke-interface {v0, v1, p2}, Lsc;->a(Ljava/lang/Object;Lcmf;)V

    .line 49
    return-void
.end method
