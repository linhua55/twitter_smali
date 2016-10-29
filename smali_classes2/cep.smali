.class public abstract Lcep;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final c:Lrx/t;

.field public final d:Lrx/t;


# direct methods
.method public constructor <init>(Lrx/t;Lrx/t;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcep;->c:Lrx/t;

    .line 22
    iput-object p2, p0, Lcep;->d:Lrx/t;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Lrx/ap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lrx/ap;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p1}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcep;->c:Lrx/t;

    .line 42
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcer;

    invoke-direct {v1, p0, p2}, Lcer;-><init>(Lcep;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcep;->d:Lrx/t;

    .line 51
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lach;

    invoke-direct {v1}, Lach;-><init>()V

    .line 52
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lrx/o",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p1}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcep;->c:Lrx/t;

    .line 28
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lceq;

    invoke-direct {v1, p0}, Lceq;-><init>(Lcep;)V

    .line 29
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcep;->d:Lrx/t;

    .line 36
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    .line 27
    return-object v0
.end method
