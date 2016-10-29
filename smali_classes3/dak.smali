.class Ldak;
.super Lczl;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lczl",
        "<TOUT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldaj;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TIN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldaj;)V
    .locals 1

    .prologue
    .line 50
    iput-object p1, p0, Ldak;->a:Ldaj;

    invoke-direct {p0}, Lczl;-><init>()V

    .line 51
    iget-object v0, p0, Ldak;->a:Ldaj;

    iget-object v0, v0, Ldaj;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ldak;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Ldak;->a:Ldaj;

    iget-object v0, v0, Ldaj;->b:Lczn;

    iget-object v1, p0, Ldak;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lczn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ldak;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method
