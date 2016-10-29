.class Lrv;
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
        "Lcom/twitter/android/provider/z;",
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
    .line 35
    iput-object p1, p0, Lrv;->c:Lru;

    iput-object p2, p0, Lrv;->a:Lsc;

    iput-object p3, p0, Lrv;->b:Lsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcmf;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lrv;->a(Ljava/lang/String;Lcmf;)V

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
            "Lcom/twitter/android/provider/z;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lrv;->a:Lsc;

    iget-object v1, p0, Lrv;->b:Lsv;

    invoke-interface {v0, v1, p2}, Lsc;->a(Ljava/lang/Object;Lcmf;)V

    .line 40
    return-void
.end method
