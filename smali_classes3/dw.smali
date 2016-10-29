.class Ldw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Leq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leq",
        "<",
        "Ldz",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Leq;

.field final synthetic b:Ldv;


# direct methods
.method constructor <init>(Ldv;Leq;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Ldw;->b:Ldv;

    iput-object p2, p0, Ldw;->a:Leq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldz;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldz",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Ldw;->a:Leq;

    iget-object v1, p1, Ldz;->b:Lcom/facebook/common/references/a;

    invoke-virtual {v1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Leq;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 121
    check-cast p1, Ldz;

    invoke-virtual {p0, p1}, Ldw;->a(Ldz;)I

    move-result v0

    return v0
.end method
