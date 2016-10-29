.class public Lbag;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/io/Closeable;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/q",
        "<TC;TC;>;"
    }
.end annotation


# instance fields
.field final a:Lbaj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbaj",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbaj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbaj",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lbag;->a:Lbaj;

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lbag;->a(Lrx/ao;)Lrx/ao;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/ao;)Lrx/ao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TC;>;)",
            "Lrx/ao",
            "<-TC;>;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lbah;

    invoke-direct {v0, p0, p1, p1}, Lbah;-><init>(Lbag;Lrx/ao;Lrx/ao;)V

    return-object v0
.end method
