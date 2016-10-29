.class public Lei;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lej;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lej",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lej;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lej",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Lel;


# direct methods
.method public constructor <init>(Lej;Lel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lej",
            "<TK;TV;>;",
            "Lel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lei;->a:Lej;

    .line 23
    iput-object p2, p0, Lei;->b:Lel;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/android/internal/util/Predicate;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<TK;>;)I"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lei;->a:Lej;

    invoke-interface {v0, p1}, Lej;->a(Lcom/android/internal/util/Predicate;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/a",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lei;->a:Lej;

    invoke-interface {v0, p1}, Lej;->a(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    iget-object v1, p0, Lei;->b:Lel;

    invoke-interface {v1}, Lel;->b()V

    .line 34
    :goto_0
    return-object v0

    .line 32
    :cond_0
    iget-object v1, p0, Lei;->b:Lel;

    invoke-interface {v1}, Lel;->a()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a",
            "<TV;>;)",
            "Lcom/facebook/common/references/a",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lei;->b:Lel;

    invoke-interface {v0}, Lel;->c()V

    .line 40
    iget-object v0, p0, Lei;->a:Lej;

    invoke-interface {v0, p1, p2}, Lej;->a(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method
