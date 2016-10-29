.class Lamk;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Ljava/util/List",
        "<",
        "Lamy;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lamj;


# direct methods
.method constructor <init>(Lamj;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lamk;->a:Lamj;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0, p1}, Lamj;->a(Lamj;Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lamk;->a(Ljava/util/List;)V

    return-void
.end method
